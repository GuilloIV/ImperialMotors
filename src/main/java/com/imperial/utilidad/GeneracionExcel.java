package com.imperial.utilidad;

import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

public class GeneracionExcel {

    public static void generarReporteProfesional(File archivo, String tipoReporte, List<String> datos) throws IOException {
        try (Workbook libro = new XSSFWorkbook(); 
             FileOutputStream out = new FileOutputStream(archivo)) {
            
            Sheet hoja = libro.createSheet("Reporte Financiero");

            // Estilos Profesionales
            CellStyle estiloHeader = libro.createCellStyle();
            Font fuenteHeader = libro.createFont();
            fuenteHeader.setBold(true);
            fuenteHeader.setColor(IndexedColors.WHITE.getIndex());
            estiloHeader.setFont(fuenteHeader);
            estiloHeader.setFillForegroundColor(IndexedColors.DARK_BLUE.getIndex());
            estiloHeader.setFillPattern(FillPatternType.SOLID_FOREGROUND);
            estiloHeader.setAlignment(HorizontalAlignment.CENTER);

            // 1. Encabezado del Reporte
            Row filaTitulo = hoja.createRow(0);
            Cell celdaTitulo = filaTitulo.createCell(0);
            celdaTitulo.setCellValue("IMPERIAL MOTORS - " + tipoReporte.toUpperCase());
            celdaTitulo.setCellStyle(estiloHeader);

            // 2. Definición de Columnas
            Row filaColumnas = hoja.createRow(2);
            String[] headers = {"Concepto / Periodo", "Valor / Monto"};
            for (int i = 0; i < headers.length; i++) {
                Cell cell = filaColumnas.createCell(i);
                cell.setCellValue(headers[i]);
                cell.setCellStyle(estiloHeader);
            }

            // 3. Llenado de Datos
            int numFila = 3;
            for (String linea : datos) {
                Row fila = hoja.createRow(numFila++);
                if (linea.contains("|")) {
                    String[] partes = linea.split("\\|");
                    fila.createCell(0).setCellValue(partes[0].trim());
                    fila.createCell(1).setCellValue(partes[1].trim());
                } else {
                    fila.createCell(0).setCellValue(linea);
                }
            }

            // Ajuste automático de columnas
            hoja.autoSizeColumn(0);
            hoja.autoSizeColumn(1);

            libro.write(out);
        }
    }
}