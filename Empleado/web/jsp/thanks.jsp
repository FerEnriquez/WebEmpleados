<%-- 
    Document   : thanks
    Created on : 24/10/2018, 10:20:19 AM
    Author     : Fer Enriquez'
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ternium Empleado</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <jsp:include page="/jsp/encabezado.jsp" flush="flus"></jsp:include>
        <h1>Empleado agregado exitosamenente</h1>
         <h2>Informacion:</h2>
        <label class="title">Nomina</label>
        <span class="result">${user.nomina}</span><br><br>
        <label class="title">Nombre</label>
        <span class="result">${user.nombre}</span><br><br>
        <label class="title">MAC Address:  </label>
        <span class="result">${user.mac}</span><br><br>
        
        <form action="" method="get">
            <input type="hidden" name="action" value="join">
            <input type="submit" value="Return">
        </form>
    </body>
</html>
