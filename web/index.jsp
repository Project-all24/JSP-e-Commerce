<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:setBundle basename="Bundles.lang" var="lang" scope="application"/>

<!DOCTYPE html>
<html lang="<fmt:message key="idioma" bundle="${lang}"/>">
    <head>
        <title>E-commerce</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <jsp:directive.include file="views/head.jsp"/>
    </head>
    <body>
    
    <div class="container-fluid">
    <div class="appWrapper">    
    
    <jsp:directive.include file="views/header.jsp"/>    
        
    <div class="row">
    
    <div class="productos col-md-9 col-sm-9">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-9">
                <div class="row headerProductos">
                    <header id="tituloProdu" class="col-md-11 col-sm-11 col-xs-12">
                        <fmt:message key="productos" bundle="${lang}"/>
                    </header>
                    <div class="hidden-xs col-md-1 col-sm-1">
                        <span class="cambiarVistaLista pull-right glyphicon glyphicon-align-justify"></span>
                        <span class="cambiarVistaCuad pull-right glyphicon glyphicon-th"></span>
                    </div>
                </div>
            </div>
            
            <div class="col-xs-3 hidden-sm hidden-md hidden-lg">
                <button class="pull-right iconoCarrito">
                    <span class="pull-right glyphicon glyphicon-shopping-cart"></span>
                    <span class="oculto"><fmt:message key="carPequeno" bundle="${lang}"/></span>
                </button>
            </div>
    
        </div>
                    
        <div class="busqueda row">
            <div class="col-md-12">
                <div class="col-md-8">
                    <label for="buscaNombre">
                        <fmt:message key="textoFiltrar" bundle="${lang}"/>
                    </label>
                    <input type="text" id="buscaNombre" name="buscaNombre">
                    <button id="botonBuscar">
                        <span class="oculto"><fmt:message key="relleno" bundle="${lang}"/></span>
                        <fmt:message key="buscar" bundle="${lang}"/>
                    </button>
                </div>
                <div class="col-md-4">
                    <button id="botonMostrarTodo">
                        <span class="oculto"><fmt:message key="relleno" bundle="${lang}"/></span>
                        <fmt:message key="todosProductos" bundle="${lang}"/>
                    </button>
                </div>
            </div>
        </div>
        
        <div class="divProdu row">
            <jsp:directive.include file="views/allProducts.jsp"/>
        </div>
        
    </div>
       
    <!-- Carrito para pantallas más grandes -->
        <jsp:directive.include file="views/carrito.jsp"/>
    </div>
    
        <jsp:directive.include file="views/footer.jsp"/>
    
    </div>
    
    <!-- Modal al realizar la compra-->
    <jsp:directive.include file="views/purchaseModal.jsp"/>
    
    </div>        
    
    </body>
</html>
