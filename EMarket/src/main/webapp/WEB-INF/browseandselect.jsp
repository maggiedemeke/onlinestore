<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>EMarket</title>
</head>
<body>
<jsp:include page="/WEB-INF/header_template.jsp" />


<h1>EMarket</h1>
<div class = "list">
<c:set var="product_count" value="0" scope="page"/>
                <c:forEach var="Product"  items="${products}">
                    <c:if test="${product_count % 3 == 0}"><div class="row"></c:if> 
              		<%-- <c:set var="product" value="${product}" scope="session" /> --%>
                   <a href="ProductDetailController?name=${Product.name}">
                   <img src="<c:url value="${Product.link}"/>" value ="${Product.id}" name = "${Product.name}" width="300" height = "200" 
                    alt= "product image" class="img-thumbnail" class="img-responsive" /></a>
                    <c:if test="${product_count % 3 == 2}"></div></c:if>
                    <c:set var="product_count" value="${product_count + 1}" scope="page"/>
                </c:forEach>

</div>


</body>
</html>