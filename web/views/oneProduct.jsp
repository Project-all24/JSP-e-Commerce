<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Pagina jSP para purebas  -->

<%
    
String json2 = request.getParameter("inputCarro");

JSONObject obj = new JSONObject(json2);

List list = new ArrayList();
JSONArray array = obj.getJSONArray("info");
for(int i = 0 ; i < array.length() ; i++){
    list.add(array.getJSONObject(i).getInt("id"));
}
System.out.println(list);

%>
