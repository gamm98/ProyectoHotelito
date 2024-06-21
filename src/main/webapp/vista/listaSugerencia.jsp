<%-- 
    Document   : listaSugerencia
    Created on : 28 may. 2024, 00:56:35
    Author     : Piero
--%>

<%@page import="modelo.dto.mTipoSugerencia"%>
<%@page import="servicios.conexiones.conexionBD"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.dto.msugerencia"%>
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
        <link href="<%= request.getContextPath()%>../css/formularioSugerencia.jsp.css" rel="stylesheet" type="text/css"/>
        <title>Formulario de Sugerencias</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <!--Posible error en la linea 44, mayusculas idsugerencia-->
    <body>
        <%
            Connection cnx = new conexionBD().getConexion();
            PreparedStatement ps; //optimiza la ejecución sql
            ResultSet rs;
            
            String cadSQL = "SELECT a.idsugerencia, a.nombresuge, a.correosuge, a.infosuge, b.idtiposuge, b.nombretiposuge as NombreTipoSugerencia "
                    + " FROM sugerencia a inner join tiposugerencia b "
                    + "on a.idtiposuge = b.idtiposuge";
            List<msugerencia> lista = null;
            
            try {
                ps= cnx.prepareStatement(cadSQL);
                rs = ps.executeQuery();
                lista = new ArrayList<>();
                while (rs.next()) {
                    msugerencia m = new msugerencia(
                        rs.getInt("idsugerencia"),
                        rs.getString("nombresuge"),
                        rs.getString("correosuge"),
                        rs.getString("infosuge"),
                        new mTipoSugerencia(rs.getInt("idtiposuge"), rs.getString("nombretiposuge"))
                    );
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
                <c:forEach var="msugerencia" items="${lista}">
                    <tr>
                        <td>${msugerencia.idsugerencia}</td>
                        <td>${msugerencia.nombresuge}</td>
                        <td>${msugerencia.infosuge}</td>
                        <td>${msugerencia.correosuge}</td>
                        <td>${msugerencia.mtiposugerencia}</td>
                        <td class="acciones">
                            <a href="<%=request.getContextPath()%>/Controlador?accion=edit&id=${msugerencia.idsugerencia}"><i class="fa-solid fa-pen-to-square editar"></i></a>
                            <a href="<%=request.getContextPath()%>/Controlador?accion=delete&id=${msugerencia.idsugerencia}"><i class="fa-sharp fa-solid fa-trash delete"></i></a>
                        </td>
                    </tr>
                </c:forEach>           
                    </tr>
                </tbody>
                
            </table>
        </div>
    </body>
</html>
