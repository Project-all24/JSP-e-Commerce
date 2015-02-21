<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>
    <c:when test="${ productos.recuperarProductos(param.nombre) }">
        
    <c:forEach items="${productos.productos}" var="product">

    <div>    
        <div>
            <c:out value="${product.nombre}"/>
            <c:out value="${product.precio}"/>
            </div>
        <div>
            <c:out value="${product.descripcion}"/>
            <button>Añadir al carrito</button>
        </div>
    </div>

    </c:forEach>
    
    </c:when>

    <c:otherwise>
        <div>No hay productos con ese parámetro</div>
    </c:otherwise>

</c:choose>

