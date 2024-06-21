<%@page import="java.nio.file.StandardCopyOption"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Files"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
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

            out.println("El reclamo se envió correctamente.");

            // Recoger los valores con request.getParameter
            String nombre = request.getParameter("nombre");
            String dni = request.getParameter("dni");
            String correo = request.getParameter("correo");
            String fecha = request.getParameter("fecha");
            String descripcion = request.getParameter("descripcion");
            String evidencia = targetFile; // Ruta del archivo de evidencia

            // Establecer la conexión a la base de datos
        }
    }
%>