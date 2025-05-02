<%-- 
    Document   : registro
    Created on : 2/05/2025, 7:39:13 a. m.
    Author     : Personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Registro de usuario</title>
        
    </head>
    <body>
        <div class="contenedor">
            <% if (request.getAttribute("mensaje") != null) { %>
            <div class="mensaje"> 
                <%= request.getAttribute("mensaje") %>
            </div>
            <% } %>
            <form action="registro" method="POST">
                <div class="form_g"> 
                    <label for="nombre"> Nombre: </label>
                    <input type="text" id="nombre" name="nombre" required>
                </div>
                <div class="form_g"> 
                    <label for="apellido"> Apellido: </label>
                    <input type="text" id="apellido" name="apellido" required>
                </div>
                <div class="form_g"> 
                    <label for="email"> Email: </label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form_g"> 
                    <label for="password"> Contraseña: </label>
                    <input type="password" id="password" name="password" required>
                </div>
                <div class="form_g">                     
                    <button type="submit" class="btn">Registrar</button>
                </div>
            </form>
            <div class="menu">
            <a href="index.jsp">Volver a Inicio</a>  
            <a href="consulta">Consultar Usuarios</a>
        </div>
        </div>
    </body>
</html>
