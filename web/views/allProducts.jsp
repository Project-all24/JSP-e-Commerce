<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="productos" class="Clases.Almacen" scope="session"/>
<c:choose>

<c:when test="${productos.recuperarProductos()}">
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
    <div>No hay productos</div>
</c:otherwise>
            
</c:choose>