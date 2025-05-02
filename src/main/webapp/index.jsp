<%-- 
    Document   : index
    Created on : 2/05/2025, 7:54:07 a. m.
    Author     : Personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Sistema de registro de Usuarios</title>
        <style>                        
            body {
                font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
                margin: 0 auto;
                padding: 20px;
                line-height: 1.6;
                display: flex; 
                align-items: column; 
                align-items: center;
                background-color: rgba(219, 246, 255, 1);
}
            h1 {
                color: #333;
            }            
            .contenedor {
                max-width: 800px;
                margin: 20px auto;
                padding: 15px;
                border-radius: 16px;
                transition: .4s ease-in-out;
                box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
                background-color: white;
}
            .menu {
                display: flex;
                gap: 20px;
                justify-content: center;
                margin: 20px 0;
                
            }
            .menu a { 
                padding: 7px 8px; 
                background-color: rgba(158, 228, 255, 0.8);
                color: black; 
                text-decoration: none; 
                border-radius: 4px; }
            .menu a:hover { 
               background-color: rgba(155, 197, 214, 1);
            }
        </style>
    </head>
    <body>
        <div class="contenedor">
            <h1>Bienvenido al sistema de registro de Usuario</h1>
            
            <p>Este sistema permite registrar nuevos usuarios y consultar la información de usuarios registrados</p>
            <div class="menu">
                <a href="registro"> Registrar usuario</a>
                <a href="consulta"> Consultar usuario</a>
            </div>
            <hr>
            
            <h2> Información del sistema </h2>
            <p>
                Este sistema es un ejemplo simple que muestra cómo utilizar:
            <ul>
                <li>Servlets para procesar formularios</li>
                <li>JSP para renderizar páginas dinámicas</li>
                <li>Métodos HTTP GET y POST</li>
                <li>Sesiones para almacenar datos</li>
            </ul>
            </p>
        </div>
    </body>
</html>
