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
        <style>
          body {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            margin: 0 auto;
            padding: 20px;
            line-height: 1.6;
            display: flex;
            flex-direction: column; 
            align-items: center;
            background-color: rgba(219, 246, 255, 1);
          }
        
          h1 {
            color: #333;
          }
        
          .contenedor {
            width: 800px;
            margin: 40px auto; 
            padding: 30px; 
            border-radius: 16px;
            transition: .4s ease-in-out;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            background-color: #f9f9f9; 
            text-align: center; 
          }
          
          .mensaje {
            background-color: rgba(255, 165, 165, 1); 
            color: black;             
            padding: 15px;
            margin-bottom: 20px;
            border-radius: 8px;
            border: 1px solid #b2ebf2;
          }
          
           h1 {
            color: #333;
            margin-bottom: 30px; 
          }
          
          .form_g {
            margin-bottom: 20px;
            text-align: left; 
          }
          
          .form_g label {
            display: block; 
            margin-bottom: 5px; 
            font-weight: bold; 
            color: #555;
          }

          .form_g input[type="text"],
          .form_g input[type="email"],
          .form_g input[type="password"] {
            width: calc(100% - 12px); 
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
            box-sizing: border-box;
          }
          
          .btn {
            background-color: rgba(158, 228, 255, 0.8); 
            color: black;
            padding: 12px 25px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
          }
          
          .btn:hover {
            background-color: rgba(155, 197, 214, 1);
          }
          
          .menu {
            margin-top: 30px; 
          }
          
          .menu a {
            color: #007bff;
            text-decoration: none;
            margin: 0 15px; 
            font-size: 16px;
          }
          
          .menu a:hover {
            text-decoration: underline;
          }
        </style>
    </head>
    <body>
        <div class="contenedor">
            <% if (request.getAttribute("mensaje") != null) { %>
            <div class="mensaje"> 
                <%= request.getAttribute("mensaje") %>
            </div>
            <% } %>
            <form action="registro" method="POST">
                
                <h1>Registra el usuario</h1>
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
                <div class="form_btn">                     
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
