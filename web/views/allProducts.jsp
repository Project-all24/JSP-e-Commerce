<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="productos" class="Clases.Almacen" scope="session"/>
<c:choose>

<c:when test="${productos.recuperarProductos()}">
    <c:forEach items="${productos.productos}" var="product">

    <div class="producto col-lg-3 col-md-4 col-sm-4 col-xs-12">    
        <div class="row">
            <div class="nombre col-md-12" name="${product.nombre}"><c:out value="${product.nombre}"/></div>
        </div>
        <div class="row">
            <div class="col-md-4">Precio:</div>
            <div class="precio col-md-8 col-xs-6" name="${product.nombre}"><c:out value="${product.precio}"/></div>
        </div>
        <div class="row">
            <div class="col-md-6">Unidades:</div>
            <div class="col-md-6 col-xs-6">
                <input name="${product.nombre}" type="number" min="1"/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 col-xs-12 descripcionPro"><c:out value="${fn:substring(product.descripcion,0,30)}..."/></div>
            <div class="col-md-12 bloqA�adir">
                <button name="${product.nombre}" id="a�adir" class="pull-right">A�adir al carrito</button>
            </div>
        </div>
    </div>

    </c:forEach>
</c:when>

<c:otherwise>
    <div>No hay productos</div>
</c:otherwise>
            
</c:choose>