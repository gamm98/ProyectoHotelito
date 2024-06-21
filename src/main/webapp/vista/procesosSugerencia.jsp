<%-- 
    Document   : procesosSugerencia
    Created on : 23 abr 2024, 0:36:11
    Author     : MOTITA2204
--%>

<%@ page import="java.io.*, java.nio.file.*, java.nio.file.attribute.*, java.nio.file.attribute.BasicFileAttributes"%>
<%@ page import="java.sql.*, java.util.*, javax.servlet.http.*, javax.servlet.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
// Obtener el directorio de destino
String targetDir = "../IMAGES/"; // Directorio de destino
String targetFile = targetDir + new File(request.getPart("fileToUpload").getSubmittedFileName()).getName(); // Nombre del archivo cargado

// Verificar tamaño del archivo
if (request.getPart("fileToUpload").getSize() > 2000000) {
    out.println("El archivo es demasiado grande. Máximo 2MB permitido.");
} else {
    // Verificar el tipo de archivo (JPEG o PNG)
    String imageFileType = targetFile.substring(targetFile.lastIndexOf(".") + 1);
    if (!"jpg".equalsIgnoreCase(imageFileType) && !"jpeg".equalsIgnoreCase(imageFileType) && !"png".equalsIgnoreCase(imageFileType)) {
        out.println("Solo se permiten archivos JPEG o PNG.");
    } else {
        // Mover el archivo al directorio de destino
        Part filePart = request.getPart("fileToUpload");
        InputStream fileContent = filePart.getInputStream();
        Files.copy(fileContent, Paths.get(targetFile), StandardCopyOption.REPLACE_EXISTING);

        out.println("La sugerencia se envió correctamente.");

        // Recoger los valores con request.getParameter
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String sugerencia = request.getParameter("sugerencia");
        String evidencia = targetFile; // Ruta del archivo de evidencia

        // Establecer la conexión a la base de datos

    }
}
%>
