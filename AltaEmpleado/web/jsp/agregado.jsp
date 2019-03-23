<%-- 
    Document   : thanks
    Created on : 10/10/2018, 10:30:46 AM
    Author     : Fer Enriquez'
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>TERNIUM Empleado</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    <header>
        <h4>Desarrollo de Aplicacioes Web</h4>
        <h5>Maria Fernanda Hernandez Enriquez A01329383</h5>
    </header>
</head>
<body>
    <h1>Empleado agregado exitosamenente</h1>
    <h2>Informacion:</h2>
    <div class="mov">
        <label class="title">Nomina</label>
        <span class="result">${empleado.nomina}</span><br><br>
        <label class="title">Nombre</label>
        <span class="result">${empleado.nombre}</span><br><br>
        <label class="title">Apellido</label>
        <span class="result">${empleado.apellido}</span><br><br>
        <label class="title">MAC Address:  </label>
        <span class="result">${empleado.mac}</span><br><br>
        <label class="title">Grupo:  </label>
        <span class="result">${empleado.grupo}</span><br><br>
        <label class="title">Password validada.  </label>

        <form action="" method="get">
            <input type="hidden" name="action" value="join">
            <input class="button" type="submit" value="Return">
        </form>
    </div>
</body>
<footer>
    <p> Fecha: <span id = "date"> </span> </p>
    <p> Hora:  <span id = "hour"> </span> </p>

    <script>
        var dt = new Date();
        document.getElementById("date").innerHTML = dt.toLocaleDateString();
    </script>

    <script>
        var dt = new Date();
        document.getElementById("hour").innerHTML = dt.toLocaleTimeString();
    </script>

</footer>
</html>