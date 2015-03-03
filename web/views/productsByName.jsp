<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:choose>
    <c:when test="${ productos.recuperarProductos(param.nombre) }">
        
    <c:forEach items="${productos.productos}" var="product">
    
    <jsp:directive.include file="bloqueProdu.jsp"/>
    
    </c:forEach>
    
    </c:when>

    <c:otherwise>
        <div>No hay productos con ese parámetro</div>
    </c:otherwise>

</c:choose>

