# 🚗 Imperial Motors

Sistema de gestión para Imperial Motors desarrollado con **JavaFX + Maven + MySQL**.

---

## 📋 Requisitos

| Herramienta | Versión mínima | Verificar |
|---|---|---|
| JDK | 1.8 (Java 8) | `java -version` |
| Maven | 3.6+ | `mvn -version` |
| MySQL | 8.0+ | `mysql --version` |
| Git | Cualquiera | `git --version` |

> ⚠️ **Importante:** El proyecto usa Java 8 porque JavaFX viene incluido en ese JDK. Versiones superiores requieren configuración adicional.

---

## ⚙️ Configuración inicial

### 1. Clonar el repositorio

```bash
git clone https://github.com/GuilloIV/ImperialMotors.git
cd ImperialMotors
```

### 2. Importar la base de datos

```bash
mysql -u root -p < database/imperial_motors.sql
```

### 3. Configurar credenciales de la base de datos

Copia la plantilla y edítala con tus datos:

**Linux / Mac:**
```bash
cp src/main/resources/db.properties.template src/main/resources/db.properties
```

**Windows:**
```cmd
copy src\main\resources\db.properties.template src\main\resources\db.properties
```

Abre `db.properties` y llena tus credenciales:

```properties
db.url=jdbc:mysql://localhost:3306/imperial_motors
db.user=TU_USUARIO
db.password=TU_PASSWORD
db.driver=com.mysql.cj.jdbc.Driver
```

---

## ▶️ Ejecutar el proyecto

```bash
mvn exec:java
```

---

## 🖥️ Abrir en tu IDE

| IDE | Pasos |
|---|---|
| **IntelliJ IDEA** | `File → Open → selecciona el pom.xml` |
| **Eclipse** | `File → Import → Existing Maven Projects` |
| **VS Code** | Instala la extensión `Extension Pack for Java` y abre la carpeta |
| **NetBeans** | `File → Open Project → selecciona la carpeta` |

---

## 📁 Estructura del proyecto

```
ImperialMotors/
├── database/
│   └── imperial_motors.sql       # Script de la base de datos
├── src/
│   └── main/
│       ├── java/com/imperial/
│       │   ├── controlador/      # Controladores JavaFX
│       │   ├── dominio/          # Lógica de negocio
│       │   ├── modelo/
│       │   │   ├── dao/          # Acceso a datos
│       │   │   └── pojo/         # Entidades
│       │   ├── utilidad/         # Clases de apoyo
│       │   └── ImperialMotors.java  # Clase principal
│       └── resources/com/imperial/
│           ├── vista/            # Archivos .fxml (vistas JavaFX)
│           ├── recurso/          # Imágenes y CSS
│           ├── db.properties     # Credenciales (no incluido en el repo)
│           └── log4j2.xml        # Configuración de logs
├── .gitignore
├── pom.xml
└── README.md
```

---

## 🔒 Nota sobre credenciales

El archivo `db.properties` está excluido del repositorio por seguridad.  
Cada integrante del equipo debe crearlo localmente siguiendo el **paso 3** de la configuración.

---

## 🛠️ Tecnologías utilizadas

- **JavaFX** — Interfaz gráfica
- **Maven** — Gestión de dependencias
- **MySQL** — Base de datos
- **iTextPDF** — Generación de reportes en PDF
- **Log4j2** — Sistema de logs
- **Spring Security Crypto** — Encriptación de contraseñas
