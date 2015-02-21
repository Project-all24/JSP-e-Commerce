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
    
    <div class="appWraper">
        
    <jsp:directive.include file="header.jsp"/>    
        
    <div class="productos">
        
        <h2>Productos</h2>
        
        <div class="busqueda">
            <p>Filtrar búsqueda</p>
            <input type="text" id="buscaNombre" name="buscaNombre">
            <button id="botonBuscar">Buscar</button>
            <button id="botonMostrarTodo">Mostrar todos los productos</button>
        </div>
        
        <div class="divProdu">
            <jsp:directive.include file="allProducts.jsp"/>
        </div>
        
    </div>
        
    <div class="carrito">
        <h2>Carrito</h2>
        <div class="productsCar">
            
        </div>
        <p>Total:<span id="total">0.0</span></p>
    </div>    
        
    </div>        
    
    </body>
</html>
