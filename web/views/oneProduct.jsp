<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    
    <jsp:useBean id="producto" class="Clases.Producto"/>
    
    <div class="row">
        <div class="productos col-md-9 col-sm-9">
        
        <c:choose>  
        
        <c:when test="${producto.recuperarDatosPorId(param.productId)}">
            
        <div class="row">
            <div class="col-md-12 col-xs-9">
                <div class="row headerProductos">
                    <header class="col-md-11 col-sm-11 col-xs-12">
                        <h2>${producto.nombre}</h2>
                    </header>
                </div>
            </div>
            <div class="col-xs-3 hidden-sm hidden-md hidden-lg">
                <span class="iconoCarrito pull-right glyphicon glyphicon-shopping-cart"></span>
            </div>
        </div>
                  
        <div class="row productContent">            
            <div class="precioContent col-md-9 col-sm-9">
                Precio:
            </div>
            <div class="col-md-3 col-sm-3">
                <c:out value="${producto.precio}"/>
            </div>
            
            <div class="descripContent col-md-12 col-sm-12">
                Descripción:
            </div>
            <div class="col-md-12 col-sm-12">
                <c:out value="${producto.descripcion}"/>
            </div>
            
            <div class="cantContent col-md-9">
                <div class="row">
                    <div class="col-md-2 col-md-offset-6">
                    Unidades:
                    </div>
                    <div class="col-md-4">
                        <input type="number">
                    </div>
                </div>
            </div>
            
            <div class="col-md-3 col-sm-3">
                <button>Añadir al carrito</button>
            </div>
            
        </div>
        
        </c:when>
            
        <c:otherwise>
            No hay productos
        </c:otherwise>
                    
        </c:choose>
                    
        </div>
                    
    <!-- Carrito para pantallas más grandes -->
        <jsp:directive.include file="carrito.jsp"/>
    </div>
    
        <jsp:directive.include file="footer.jsp"/>
    
    </div>
    
    <!-- Carrito para pantallas pequeñas -->
    <jsp:directive.include file="carrito.jsp"/>
    
    </div>        
    
</body>
</html>




