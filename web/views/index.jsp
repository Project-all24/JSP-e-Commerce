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
    
    <div class="container-fluid">
    <div class="appWrapper">    
    
    <jsp:directive.include file="header.jsp"/>    
        
    <div class="row">
    
    <div class="productos col-md-9 col-sm-9">
        <div class="row">
            <div class="col-md-12 col-xs-10">
                <div class="row headerProductos">
                    <div class="col-md-11 col-sm-11 col-xs-12">
                        <h2>Productos</h2>
                    </div>
                    <div class="hidden-xs col-md-1 col-sm-1">
                        <span class="cambiarVistaLista glyphicon glyphicon-align-justify"></span>
                        <span class="cambiarVistaCuad glyphicon glyphicon-th"></span>
                    </div>
                </div>
            </div>
            
            <div class="col-xs-2 hidden-sm hidden-md hidden-lg">
                <span class="iconoCarrito glyphicon glyphicon-shopping-cart"></span>
            </div>
    
        </div>
        <div class="busqueda row">
            <div class="col-md-12">
                <p>Filtrar búsqueda</p>
                <input type="text" id="buscaNombre" name="buscaNombre">
                <button id="botonBuscar">Buscar</button>
                <button id="botonMostrarTodo">Mostrar todos los productos</button>
            </div>
        </div>
        
        <div class="divProdu row">
            <jsp:directive.include file="allProducts.jsp"/>
        </div>
        
    </div>
       
    <!-- Carrito para pantallas más grandes -->
    <jsp:directive.include file="carrito.jsp"/>
    
    </div>
    
    </div>
    
    <!-- Carrito para pantallas pequeñas -->
    <jsp:directive.include file="carrito.jsp"/>
    
    </div>        
    
    </body>
</html>
