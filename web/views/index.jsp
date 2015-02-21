<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>E-commerce</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <jsp:directive.include file="head.jsp"/>
    </head>
    <body>
    
    <jsp:directive.include file="header.jsp"/>    
        
    <div class="productos">
        
        <h2>Productos</h2>
        
        <p>Filtrar búsqueda</p>
        <input type="text" id="buscaNombre" name="buscaNombre">
        <button id="botonBuscar">Buscar</button>
        <button id="botonMostrarTodo">Mostrar todos los productos</button>
        
        <div class="divProdu">
            <jsp:directive.include file="allProducts.jsp"/>
            
        </div>
        
    </div>
        
    </body>
</html>
