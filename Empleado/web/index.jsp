<%-- 
    Document   : index
    Created on : 24/10/2018, 10:57:22 AM
    Author     : Fer Enriquez'
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TERNIUM</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </head>
    <body>
    <jsp:include page="/jsp/encabezado.jsp" flush="true"></jsp:include>
    
    <form action="TerniumServlet" method="post">
        <input type="hidden" name="action" value="registro">
        <input class="button" type="submit" value="Nuevo empleado" id="submit">
    </form><br>
    <form action="TerniumServlet" method="post">
        <input type="hidden" name="action" value="mostrar">
        <input class="button" type="submit" value="Todos los empleados" id="submit">
    </form><br>


    <script>
    $(function(){
      $(".riesgo").click(function(){
        $("#contenido").load("zonariesgo.html");
      });
    });
    </script>
    <button class="riesgo">Zona de Riesgo</button> <br>
    <div id="contenido"></div>

    </body>
</html>

