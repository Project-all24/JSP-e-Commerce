<%@page import="java.util.Arrays"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="Clases.Carrito"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Pagina jSP para purebas  -->

<c:out value="${param.inputCarro}"/>

<%
    
String json2 = request.getParameter("inputCarro");  

String[] tabla = json2.split(",");

System.out.println(Arrays.toString(tabla));

/* Gson gson = new Gson();
Carrito carro = gson.fromJson(json2,Carrito.class);

assertEquals("46", carro.getProperty("id"));
assertEquals("Miguel", carro.getProperty("nombre"));
assertEquals("Autentia", carro.getProperty("empresa"));

System.out.println(carro); */
    %>
