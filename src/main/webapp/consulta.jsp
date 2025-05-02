<%-- 
    Document   : consulta
    Created on : 2/05/2025, 7:36:11 a. m.
    Author     : Personal
--%>
<%@page import="java.util.List"%>
<%@page import="com.miproyecto.modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Consulta de usuarios</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0 auto;                
                padding: 20px;
                line-height: 1.6;
            }
            h1, h2 {
                color: #333;
            }     
            .contenedor { 
                max-width: 800px; 
                margin: 0 auto; 
            }
            .form_g { 
                margin-bottom: 15px; 
            }
            .form_g label { 
                display: block; 
                margin-bottom: 5px; 
                font-weight: bold; 
            }
            .form_g input { 
                width: 70%; 
                padding: 8px; 
                box-sizing: border-box; 
                border: 1px solid #ddd; 
                border-radius: 4px; 
            }
            .btn { 
                padding: 8px 15px; 
                background-color: #4CAF50; 
                color: white; 
                border: none; 
                border-radius: 4px; 
                cursor: pointer; 
            }
            .btn:hover { 
                background-color: #45a049; 
            }
            .menu { 
                margin: 20px 0; 
            }
            .menu a { 
                color: #4CAF50; 
                text-decoration: none; 
            }
            .menu a:hover { 
                text-decoration: underline; 
            }
            table { 
                width: 100%; 
                border-collapse: collapse; 
                margin: 20px 0; 
            }
            table, th, td { 
                border: 1px solid #ddd; 
            }
            th, td { 
                padding: 8px; 
                text-align: left; 
            }
            th { 
                background-color: #f2f2f2; 
            }
            .resultados { 
                margin: 20px 0; 
                padding: 15px; 
                border: 1px solid #ddd; 
                border-radius: 4px; 
            }
            .no_funciono { 
                color: #721c24; 
                background-color: #f8d7da; 
                padding: 10px; 
                border-radius: 4px; 
            }            
        </style>
    </head>
    <body>
            <div class="contenedor">
        <h1>Consulta de Usuarios</h1>
        
       
        <form action="consulta" method="GET">
            <div class="form_g">
                <label for="email">Buscar usuario por email:</label>
                <input type="email" id="email" name="email" required>
                <button type="submit" class="btn">Buscar</button>
            </div>
        </form>
        
       
        <% if (request.getAttribute("busquedaRealizada") != null) { %>
            <div class="resultados">
                <h2> Resultado de la búsqueda </h2>
                
                <% if (request.getAttribute("usuarioBuscado") != null) { %>
                    <% Usuario usuario = (Usuario) request.getAttribute("usuarioBuscado"); %>
                    <table> 
                        <tr>
                            <th> Nombre </th>
                            <th> Apellido </th>
                            <th> Email </th>
                        </tr>
                        <tr>
                            <td> <%= usuario.getNombre()%> </td>
                            <td> <%= usuario.getApellido()%> </td>
                            <td> <%= usuario.getEmail()%> </td>
                        </tr>                        
                    </table>
                        <%} else {%>
                        <div class="no_funciono">
                            No se encontró ningún archivo usuario con el email especificado.
                        </div>
                        <% } %>
                </div>
            <% } %>
            <h2> Lista de usuarios registrados </h2>
            <%
            List<Usuario> listaUsuarios = (List<Usuario>)session.getAttribute("listaUsuarios");
            if (listaUsuarios != null && !listaUsuarios.isEmpty()) {
            %>
            <table> 
                <tr>
                    <th> Nombre </th>
                    <th> Apellido </th>
                    <th> Email </th>
                </tr>
                <% for (Usuario usuario : listaUsuarios) { %>
                <tr>
                    <td> <%= usuario.getNombre()%> </td>
                    <td> <%= usuario.getApellido()%> </td>
                    <td> <%= usuario.getEmail()%> </td>
                </tr> 
                <% } %>
            </table>
            <% } else { %>
            <p> No hay usuarios registrados en el sistemas.</p>
            <% } %>                
            <div class="menu"> 
                <a href="index.jsp"> Volver a Inicio</a>
                <a href="registro"> Registrar usuario</a>
            </div>
        </div>
    </body>
</html>
