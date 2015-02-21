<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>
    <c:when test="${ productos.recuperarProductos(param.nombre) }">
        
    <c:forEach items="${productos.productos}" var="product">

    <div class="producto">    
        <div>
            <div class="nombre" name="${product.nombre}"><c:out value="${product.nombre}"/></div>
            <div class="precio" name="${product.nombre}"><c:out value="${product.precio}"/></div>
            <div><input name="${product.nombre}" type="number" min="1"/></div>
        </div>
        <div>
            <div><c:out value="${product.descripcion}"/></div>
            <div>
                <button name="${product.nombre}" id="añadir">Añadir al carrito</button>
            </div>
        </div>
    </div>

    </c:forEach>
    
    </c:when>

    <c:otherwise>
        <div>No hay productos con ese parámetro</div>
    </c:otherwise>

</c:choose>

