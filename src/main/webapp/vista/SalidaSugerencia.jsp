<%-- 
    Document   : SalidaSugerencia
    Created on : 28 may. 2024, 01:48:14
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
                    <td>Código</td><td>Nombre</td><td>Correo</td><td>InfoSugerencia</td><td>TipoSugerencia</td>
                </tr>                
            </thead>
            <tbody>
                <tr>
                    <td>${codigo}</td>
                    <td>${nombre}</td>
                    <td>${correo}</td>
                    <td>${infosuge}</td>
                    <td>${tiposuge}</td>
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
