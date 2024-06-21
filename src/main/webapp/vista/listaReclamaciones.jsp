<%-- 
    Document   : listaReclamaciones
    Created on : 17 jun. 2024, 01:27:41
    Author     : Piero
--%>

<%@page import="modelo.dto.mreclamaciones"%>
<%@page import="servicios.conexiones.conexionBD"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.SQLException "%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%= request.getContextPath()%>../css/libroReclamaciones.jsp.css" rel="stylesheet" type="text/css"/>
        <title>Libro de Reclamaciones</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <!--Posible error en la linea 44, mayusculas idsugerencia-->
    <body>
        <%
            Connection cnx = new conexionBD().getConexion();
            PreparedStatement ps; //optimiza la ejecución sql
            ResultSet rs;
            
            String cadSQL = "SELECT idreclamaciones, nombrerec, dnirec, correorec, fecharec, descripcionrec  "
                    + " FROM reclamaciones "
                   ;
            List<mreclamaciones> lista = null;
            
            try {
                ps= cnx.prepareStatement(cadSQL);
                rs = ps.executeQuery();
                lista = new ArrayList<>();
                while (rs.next()) {
                    mreclamaciones m = new mreclamaciones(
                        rs.getInt("idreclamaciones"),
                        rs.getString("nombrec"),
                        rs.getString("dnirec"),
                        rs.getString("correorec"),
                        rs.getString("fecharec"),
                        rs.getString("descripcionrec"));
                    lista.add(m);
                }
                rs.close();
            } catch (SQLException ex) {
            }
            request.setAttribute("lista", lista);
        %>
        <div class="container">
            <table class="tablaRep">
                
                <tbody>
                <c:forEach var="mreclamaciones" items="${lista}">
                    <tr>
                        <td>${mreclamaciones.idreclamaciones}</td>
                        <td>${mreclamaciones.nombrerec}</td>
                        <td>${mreclamaciones.dnirec}</td>
                        <td>${mreclamaciones.correorec}</td>
                        <td>${mreclamaciones.fecharec}</td>
                        <td>${mreclamaciones.descripcionrec}</td>
                        <td class="acciones">
                            <a href="<%=request.getContextPath()%>/Controlador?accion=edit&id=${mreclamaciones.idreclamaciones}"><i class="fa-solid fa-pen-to-square editar"></i></a>
                            <a href="<%=request.getContextPath()%>/Controlador?accion=delete&id=${mreclamaciones.idreclamaciones}"><i class="fa-sharp fa-solid fa-trash delete"></i></a>
                        </td>
                    </tr>
                </c:forEach>           
                    </tr>
                </tbody>
                
            </table>
        </div>
    </body>
</html>
