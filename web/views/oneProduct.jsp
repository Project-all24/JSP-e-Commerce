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
        </div>
                  
        <div class="row productContent">            
            <div class="col-md-9 col-sm-9">
                Precio:<c:out value="${producto.precio}"/>
            </div>
            <div class="col-md-9 col-sm-9">
                Descripción:<c:out value="${producto.descripcion}"/>
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




