<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tacos</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/custom.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body id="give">
<c:choose>
<c:when test="rgb(243, 141, 150)">
<h1 id=tester>Test:</h1>
something1
</c:when>
<c:otherwise>
something2
<h1 id=tester>Test:</h1>
</c:otherwise>
</c:choose>



<input onclick="find()" type="submit" value="test" />


</body>
<script type="text/javascript" src="/js/custom.js"></script>
<script>
var mydata=localStorage.getItem("color")

function find(){
	var word = p.textContent
	var page = document.getElementById("give")
	if(document.getElementById("give") == word){
		return true
	}else{
		return false
	}
}
</script>
</html>