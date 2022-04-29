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
<body onload="randomalbum()">
<div class="header center flex space-between">
            <h1>Album</h1>
            ${mydata }
        </div>
        <div class="allcontain">
            <div class="outfitdisplay flex">
                <div class="album">
                    <img id="album" height= "500" width="800" id="shirt" src="">
                </div>
            </div>
            <div class="interactionbar">
                <button onclick="randomalbum()">Generate</button>
            </div>
        </div>
        <form action="/logout">
<input onclick= "clearimg()" type="submit" value="Upload Another Image" />
</form>
        
</body>
<script type="text/javascript" src="/js/custom.js"></script>
<script>
var mydata=localStorage.getItem("color")
</script>
</html>