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
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body id=give onload="find()">
<div class="containall">
<input type="file" id="myFileInput" /><br />
<h1>Image Preview</h1>
<img id="imgPreview" src="" alt="Preview" />

<form action="/">
<input type="submit" value="Upload" />
</form>

<form action="/logout">
<input onclick= "clearimg()" type="submit" value="Upload Another Image" />
</form>

<form action="/album">
<input type="submit" value="Get Album" />
</form>
<div class="imagehex flex">
<h1>Your image hex :  </h1>
 <h1 id="tester"></h1>
</div>

</div>

<form:form action="/picture/new" method="post" modelAttribute="pic">
	<div class= "form-group">
		<label>Hex:</label>
		<form:input path="pic" class= "form-control"></form:input>
		<form:errors path="pic" class="text-danger"></form:errors>
	</div>
	<input type="submit" value="submit" />
	</form:form>

<script type="text/javascript" src="/js/custom.js"></script>
<% String getcolor = (String) session.getAttribute("color");  %>
${getcolor}

<script>
SessionStorage.getItem("color")
</script>
</body>
</html>