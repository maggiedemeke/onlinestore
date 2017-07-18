<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header_template.jsp" />
<pre>


</pre>
<form action="RegistrationController" method="POST">
<h2>Personal information</h2>
First Name: <input type="text" name="firstname" pattern="[A-Za-z]{2,20}"> </br>
Last Name: <input type="text" name="lasttname" pattern="[A-Za-z]{2,20}"> </br>
Email: <input type="text" name="email" > </br>
User Name: <input type="text" name="name" > </br>
Password: <input type="password" name="password1" > </br>
Confirm Password: <input type="password" name="password2" > </br></br>
<input type="button" value="continue">
</form>
</body>
</html>