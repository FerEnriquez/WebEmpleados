<%-- 
    Document   : agregar
    Created on : 24/10/2018, 10:20:43 AM
    Author     : Fer Enriquez'
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Trabajadores</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
     <jsp:include page="/jsp/encabezado.jsp" flush="flus"></jsp:include>
     <h1>Nuevo empleado</h1>
        <div class="mev">
            <form action="TerniumServlet" method="post">
                <input type="hidden" name="action" value="add">

                <label class="title">Nomina:  </label>
                <input type="text" name="nomina" required><br>

                <label class="title">Nombre: </label>
                <input type="text" name="nombre" required><br>

                <label class="title">MAC Address: </label>
                <input type="text" name="mac" required><br>

                <label>&nbsp;</label>
                <input class="button" type="submit" value="Agregar" id="submit">
            </form>
        </div>
    </body>
</html>
