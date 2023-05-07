<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="seguro.jsp"/>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/estilos.css">
<link rel="stylesheet" type="text/css" href="menu/menu.css">
<title>EUREKA APP</title>
</head>
<body>
<div class="egcc_page">

  <div class="egcc_header"><jsp:include page="header.jsp"/></div>
  <div class="egcc_menu"><jsp:include page="menu/menu.jsp"/></div>
  
  <div class="egcc_work">
  
    <h1>PROCESO DEPOSITO</h1>
    
    <%
    if( request.getAttribute("info") != null){
      out.print("<p class='egcc_info'>" + request.getAttribute("info").toString() + "</p>");
    }
    %>
    
    
    <c:if test="${requestScope.error != null}">
      <p class="egcc_error">${requestScope.error}</p>
    </c:if>
    
    <form method="post" action="CuentaDeposito">
      
      <table>
        <tr>
          <td>Cuenta:</td>
          <td><input type="text" name="cuenta" value="${requestScope.cuenta}" /></td>
        </tr>
        <tr>
          <td>Moneda:</td>
          <td>Reto (Soles/Dolares)</td>
        </tr>
        <tr>
          <td>Saldo:</td>
          <td>Reto</td>
        </tr>
        <tr>
          <td>Importe:</td>
          <td><input type="text" name="importe" value="${requestScope.importe}"/></td>
        </tr>
      
      </table>
      <input type="submit" value="Procesar" />
    </form>
  
  </div>
  
  <div class="egcc_pie"><jsp:include page="pie.jsp"/></div>

</div>
</body>
</html>