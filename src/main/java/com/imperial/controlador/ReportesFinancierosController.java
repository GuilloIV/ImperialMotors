package com.imperial.controlador;

import com.imperial.dominio.BitacoraImpl;
import com.imperial.dominio.ReporteImpl;
import com.imperial.modelo.pojo.Usuario;
import com.imperial.utilidad.Constantes;
import com.imperial.utilidad.GeneracionExcel;
import com.imperial.utilidad.GeneracionPDF;
import com.imperial.utilidad.Sesion;
import com.imperial.utilidad.Utilidades;
import com.itextpdf.text.DocumentException;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.CategoryAxis;
import javafx.scene.chart.NumberAxis;
import javafx.scene.chart.XYChart;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.layout.VBox;
import javafx.stage.FileChooser;
import javafx.stage.Modality;
import javafx.stage.Stage;

public class ReportesFinancierosController implements Initializable {

    @FXML private ComboBox<String> comboReporte;
    @FXML private VBox contenedorGrafica;
    @FXML private Button botonAuditoria;
    
    private BarChart<String, Number> graficaBarras;
    private List<String> datosTexto;
    private Usuario usuarioSesion;

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        usuarioSesion = Sesion.getUsuario();
        
        comboReporte.getItems().addAll(
            "Ventas del Mes", 
            "Ventas por Semana", 
            "Ventas por Día", 
            "KPIs y Anomalías"
        );
        
        inicializarGrafica();
        
        // Listener para generación automática al seleccionar
        comboReporte.valueProperty().addListener((observable, oldValue, newValue) -> {
            if (newValue != null) {
                procesarSeleccion(newValue);
            }
        });
    }    

    private void inicializarGrafica() {
        CategoryAxis xAxis = new CategoryAxis();
        NumberAxis yAxis = new NumberAxis();
        graficaBarras = new BarChart<>(xAxis, yAxis);
        graficaBarras.setAnimated(false);
        contenedorGrafica.getChildren().add(graficaBarras);
    }

    private void procesarSeleccion(String seleccion) {
        graficaBarras.getData().clear();
        datosTexto = new ArrayList<>();
        XYChart.Series<String, Number> serie = new XYChart.Series<>();
        serie.setName(seleccion);

        Integer idUsuario = obtenerIdUsuarioFiltro();

        switch (seleccion) {
            case "Ventas del Mes": cargarVentas(serie, "MES", idUsuario); break;
            case "Ventas por Semana": cargarVentas(serie, "SEMANA", idUsuario); break;
            case "Ventas por Día": cargarVentas(serie, "DIA", idUsuario); break;
            case "KPIs y Anomalías": cargarKPI(serie, idUsuario); break;
        }

        graficaBarras.getData().add(serie);
        
        if (usuarioSesion != null) {
            BitacoraImpl.registrar(usuarioSesion.getIdUsuario(), usuarioSesion.getNombre(), "Visualizó reporte: " + seleccion);
        }
    }

    private Integer obtenerIdUsuarioFiltro() {
        if (usuarioSesion != null && "Vendedor".equals(usuarioSesion.getRol())) {
            return usuarioSesion.getIdUsuario();
        }
        return null;
    }

    private void cargarVentas(XYChart.Series<String, Number> serie, String periodo, Integer idUsuario) {
        HashMap<String, Object> resp = ReporteImpl.obtenerDatosVentas(periodo, idUsuario);
        
        if (!(boolean) resp.get("error")) {
            Map<String, Double> datos = (Map<String, Double>) resp.get("datos");
            for (Map.Entry<String, Double> entry : datos.entrySet()) {
                serie.getData().add(new XYChart.Data<>(entry.getKey(), entry.getValue()));
                datosTexto.add(entry.getKey() + " | $" + String.format("%.2f", entry.getValue()));
            }
        }
    }

    private void cargarKPI(XYChart.Series<String, Number> serie, Integer idUsuario) {
        HashMap<String, Object> resp = ReporteImpl.analizarAnomaliasYKPI(idUsuario);
        if (!(boolean) resp.get("error")) {
            double promedio = (double) resp.get("promedio");
            List<String> anomalias = (List<String>) resp.get("anomalias");
            
            serie.getData().add(new XYChart.Data<>("Promedio Venta", promedio));
            serie.getData().add(new XYChart.Data<>("Anomalías", anomalias.size()));
            
            datosTexto.add("KPI - Venta Promedio | $" + String.format("%.2f", promedio));
            if(!anomalias.isEmpty()) {
                datosTexto.add("--- Detalle de Anomalías ---");
                datosTexto.addAll(anomalias);
            }
        }
    }

    @FXML
    private void clicExcel(ActionEvent event) {
        if (datosTexto == null || datosTexto.isEmpty()) {
            Utilidades.mostrarAlerta("Atención", "Seleccione un reporte antes de exportar.", Alert.AlertType.WARNING);
            return;
        }
        
        FileChooser fileChooser = new FileChooser();
        fileChooser.setTitle("Exportar a Excel");
        fileChooser.getExtensionFilters().add(new FileChooser.ExtensionFilter("Libro de Excel (*.xlsx)", "*.xlsx"));
        File archivo = fileChooser.showSaveDialog(null);

        if (archivo != null) {
            try {
                GeneracionExcel.generarReporteProfesional(archivo, comboReporte.getValue(), datosTexto);
                if (usuarioSesion != null) {
                    BitacoraImpl.registrar(usuarioSesion.getIdUsuario(), usuarioSesion.getNombre(), "Exportó Excel: " + comboReporte.getValue());
                }
                Utilidades.mostrarAlerta("Éxito", "Archivo Excel generado correctamente.", Alert.AlertType.INFORMATION);
            } catch (IOException e) {
                Utilidades.mostrarAlerta("Error", "No se pudo guardar el archivo.", Alert.AlertType.ERROR);
            }
        }
    }

    @FXML
    private void clicPDF(ActionEvent event) {
        if (datosTexto == null || datosTexto.isEmpty()) {
            Utilidades.mostrarAlerta("Atención", "Seleccione un reporte antes de exportar.", Alert.AlertType.WARNING);
            return;
        }
        
        FileChooser fileChooser = new FileChooser();
        fileChooser.setTitle("Guardar PDF");
        fileChooser.getExtensionFilters().add(new FileChooser.ExtensionFilter("Archivos PDF", "*.pdf"));
        File archivo = fileChooser.showSaveDialog(null);

        if (archivo != null) {
            try {
                GeneracionPDF.generarReporte(archivo, "Reporte: " + comboReporte.getValue(), datosTexto, graficaBarras);
                if (usuarioSesion != null) {
                    BitacoraImpl.registrar(usuarioSesion.getIdUsuario(), usuarioSesion.getNombre(), "Exportó PDF: " + comboReporte.getValue());
                }
                // CORRECCIÓN: Alerta de éxito añadida para paridad con Excel
                Utilidades.mostrarAlerta("Éxito", "Archivo PDF generado correctamente.", Alert.AlertType.INFORMATION);
            } catch (DocumentException | IOException e) {
                Utilidades.mostrarAlerta("Error", "Error al generar el PDF.", Alert.AlertType.ERROR);
            }
        }
    }

    @FXML
    private void cerrarVentana(ActionEvent event) {
        ((Stage) contenedorGrafica.getScene().getWindow()).close();
    }

    @FXML
    private void clicEnReportes(ActionEvent event) {
        try {
            FXMLLoader cargador = Utilidades.obtenerVistaMemoria("vista/FXMLAuditoriaLogs.fxml");
            Parent vista = cargador.load();
            Scene escena = new Scene(vista);      
            Stage escenario = new Stage();
            Sesion.registrarVentana(escenario); 
            escenario.setScene(escena);
            escenario.setTitle("Auditoria y LOGS");
            escenario.initModality(Modality.APPLICATION_MODAL);
            
            escenario.showAndWait();
        } catch (IOException ioe) {
            Utilidades.mostrarAlerta("Error", Constantes.ERROR_ABRIR_VENTANA, Alert.AlertType.ERROR);
        }
    }
    
    public void configurarVistaVendedor() {
        if (botonAuditoria != null) {
            botonAuditoria.setVisible(false); 
            botonAuditoria.setManaged(false); 
        }
    }
}