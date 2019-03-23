<%-- 
    Document   : mostrarTodos
    Created on : 24/10/2018, 10:20:09 AM
    Author     : Fer Enriquez'
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
 <title>Mostrar todos los usuarios</title>
 <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
    <body>
       <jsp:include page="/jsp/encabezado.jsp" flush="flus"></jsp:include>
        <h1>Empleadod</h1>
        
        <table>
            <tr>
                <th>Nomina</th>
                <th>Nombre</th>
                <th>MAC</th>
            </tr>
            <c:forEach var="usuario" items="${usuarios}">
                <tr>
                    <td>${usuario.nomina}</td>
                    <td>${usuario.nombre}</td>
                    <td>${usuario.mac}</td>
                </tr>
            </c:forEach>
        </table>

        <form action="" method="get">
            <input type="hidden" name="action" value="join">
            <input type="submit" value="Return">
        </form>
        
    </body>
</html>
