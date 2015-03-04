<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="producto col-lg-3 col-md-4 col-sm-6 col-xs-12">    
    <div class="row">
        <input class="id" name="${product.nombre}" type="hidden" value="${product.id}"/>
        <div class="col-md-12 nombre" name="${product.nombre}"><c:out value="${product.nombre}"/></div>
        <div class="col-md-5 col-sm-5 col-xs-5 precio"><fmt:message key="precio" bundle="${lang}"/>:</div>
        <div class="col-md-7 col-sm-7 col-xs-7 cuantia" name="${product.nombre}"><fmt:formatNumber type="currency" currencySymbol="&euro;" value="${product.precio}" /></div>
        <div class="col-md-6 col-sm-6 col-xs-6 unidades"><fmt:message key="unidades" bundle="${lang}"/>:</div>
        <div class="col-md-6 col-sm-6 col-xs-6 cantidad">
            <input class="cantidad" name="${product.nombre}" type="number" min="1"/>
        </div>
        <div class="col-md-12 col-sm-12 col-xs-12 descripcionPro"><fmt:message key="descripcion" bundle="${lang}"/>: <c:out value="${fn:substring(product.descripcion,0,30)}"/></div>
        <div class="col-md-12 col-xs-12 col-sm-12 ampliaDescrip"> <a href="oneProduct.jsp?productId=<c:out value='${product.id}'/>"><fmt:message key="masInfo" bundle="${lang}"/> ${product.nombre}</a></div>
        <div class="col-md-12 col-xs-12 bloqAnadir">
            <button name="${product.nombre}" id="añadir" class="pull-right"><fmt:message key="anadir" bundle="${lang}"/></button>
        </div>
    </div>
</div>
