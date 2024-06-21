<%-- 
    Document   : SalidaReclamaciones
    Created on : 17 jun. 2024, 01:16:36
    Author     : Piero
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>        
        <link href="css/principal.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <h1>Salida</h1>
        <table class="tablaRep">
            <thead>
                <tr>
                    <td>Nombre</td><td>DNI</td><td>Correo</td><td>Fecha</td><td>Descripcion</td>
                </tr>                
            </thead>
            <tbody>
                <tr>
                    <td>${codigo}</td>
                    <td>${nombre}</td>
                    <td>${dni}</td>
                    <td>${correo}</td>
                    <td>${fecha}</td>
                    <td>${descripcion}</td>
                </tr>                                                               
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="4">2024-1</td>
                </tr>            
            </tfoot>            
        </table>
    </body>
</html>
