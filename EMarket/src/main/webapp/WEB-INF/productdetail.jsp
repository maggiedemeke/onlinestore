<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/header_template.jsp" />
<pre>



</pre>

 <img src="${aProduct.link}" width="300" height = "200"/>
<div class="container">
 <table class="table table-striped">
    <thead>
      <tr>
        <th>Product</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Name</td>
        <td>"${aProduct.name}"</td>
      </tr>
      <tr>
        <td>Description</td>
        <td>"${aProduct.discription}"</td>
      </tr>
      <tr>
        <td>Price</td>
        <td>"${aProduct.price}"</td>
      </tr>
    </tbody>
  </table>
</div>
<div>
<form action = "ShoppingCartController" method ="post">
<fieldset>
<legend> </legend>
<input  type= button name= "addtocart" value = "Add to Cart"/>
<input  type= button name= "back" value = "Back"/>
<input  type= button name= "cart" value = "Your cart"/>

</fieldset>
</form>

</div>

</body>
</html>