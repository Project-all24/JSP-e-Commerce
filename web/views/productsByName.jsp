<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>
    <c:when test="${ productos.recuperarProductos(param.nombre) }">
        
    <c:forEach items="${productos.productos}" var="product">
    
    <div class="producto col-md-4">    
        <div class="row">
            <div class="nombre col-md-12" name="${product.nombre}"><c:out value="${product.nombre}"/></div>
        </div>
        <div class="row">
            <div class="precio col-md-6" name="${product.nombre}"><c:out value="${product.precio}"/></div>
            <div class="col-md-6">
                <input name="${product.nombre}" type="number" min="1"/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12"><c:out value="${product.descripcion}"/></div>
            <div class="col-md-12">
                <button name="${product.nombre}" id="a�adir" class="pull-right">A�adir al carrito</button>
            </div>
        </div>
    </div>

    </c:forEach>
    
    </c:when>

    <c:otherwise>
        <div>No hay productos con ese par�metro</div>
    </c:otherwise>

</c:choose>

