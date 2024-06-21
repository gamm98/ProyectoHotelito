<%@page import="servicios.conexiones.conexionBD"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="net.sf.jasperreports.engine.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="net.sf.jasperreports.engine.export.JRPdfExporter" %>
<%@ page import="net.sf.jasperreports.export.SimpleExporterInput" %>
<%@ page import="net.sf.jasperreports.export.SimpleOutputStreamExporterOutput" %>

<%
    response.setContentType("application/pdf");
    response.setHeader("Content-Disposition", "attachment; filename=Reporte.pdf");

    // Ruta al archivo .jrxml
    String reportPath = request.getServletContext().getRealPath("/Reportes/hotelito.jasper");
    
    String outputPath = request.getServletContext().getRealPath("/Reportes/Clientes.pdf");

    // Parámetros del informe
    Map<String, Object> parameters = new HashMap<>();
    // Aquí puedes agregar parámetros según sea necesario
    // Ejemplo: parameters.put("idProducto", 1);

    Connection connection = null;
    try {
        conexionBD conexionDB = new conexionBD();
        connection = conexionDB.getConexion(); // Obtener la conexión utilizando la clase Conexion

        // Llenar el informe con datos de la base de datos y parámetros
        JasperPrint jasperPrint = JasperFillManager.fillReport(reportPath, parameters, connection);

        // Exportar el informe a un archivo PDF y enviarlo como respuesta
        JRPdfExporter exporter = new JRPdfExporter();
        exporter.setExporterInput(new SimpleExporterInput(jasperPrint));
        exporter.setExporterOutput(new SimpleOutputStreamExporterOutput(response.getOutputStream()));
        exporter.exportReport();

    } catch (JRException | SQLException | IOException e) {
        e.printStackTrace(); // Manejar adecuadamente las excepciones
    } finally {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace(); // Manejar adecuadamente las excepciones
            }
        }
    }
%>
