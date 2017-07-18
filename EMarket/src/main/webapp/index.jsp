<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EMARKET</title>
</head>
<body>

<form id = "formId" action = "BrowseAndSelectController" method= "Get">
<jsp:include page="WEB-INF/header_template.jsp" />



<h2>Welcome
    <c:choose>
        <c:when test="${loggedInUser}">
            <c:out value="${firstname}" />
        </c:when>
        <c:otherwise>
            Guest
        </c:otherwise>
    </c:choose>
!</h2>

<section class="biglogo">
    <img src="<c:url value="/images/emarket.jpg" />" width="300" alt="emarket logo"/>
</section>
</Form>
<jsp:include page="WEB-INF/footer_template.jsp" />
</body>
</head>
</html>

</body>
</html>