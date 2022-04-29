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
<body>
<c:choose>
<c:when test="${sessionpic == 'rgb(243, 141, 150)' }">
        <div class="allcontain">
        
        
<h3>The album that most closely resembles your image is:</h3>

            <h1 class="name">Igor</h1>
        
        
            <div class="outfitdisplay flex">
                <div class="album">
                    <img id="album" height= "500" width="800" id="shirt" src="images/album9.png">
                </div>
            </div>
            <div class="albuminfo flex">
            <p>Artist:</p>
        <a href="https://open.spotify.com/artist/4V8LLVI7PbaPR0K2TGSxFF?si=4ii4cmT7TdazI5yrd_uRFA" target="_blank">Tyler, the Creator</a>
        <a class="link" href="https://open.spotify.com/album/5zi7WsKlIiUXv09tbGLKsE?si=948xxTorQL-0CAEL-5woHw" target="_blank">Album Songs</a>
            </div>
        <form action="/logout">
        <div class= "hex flex">
        <h1>Album hex :</h1>
        <h1 id="tester"></h1>
        
        </div>
<input onclick= "clearimg()" type="submit" value="Upload Another Image" />
</form>    
        </div>

</c:when>
<c:when test="${sessionpic =='rgb(166, 28, 31)' }">

 <div class="allcontain">
        
        
<h3>The album that most closely resembles your image is:</h3>

            <h1 class="name2">My Beautiful Dark Twisted Fantasy</h1>
        
        
            <div class="outfitdisplay flex">
                <div class="album">
                    <img id="album" height= "500" width="800" id="shirt" src="images/album7.png">
                </div>
            </div>
            <div class="albuminfo flex">
            <p>Artist:</p>
        <a href="https://open.spotify.com/artist/5K4W6rqBFWDnAN6FQUkS6x?si=gzY5Qzp-RTGMLH0W-W8L0w" target="_blank">Kanye West</a>
        <a class="link" href="https://open.spotify.com/album/20r762YmB5HeofjMCiPMLv?si=58rVka3nTsypbLnkJ71cxg" target="_blank">Album Songs</a>
            </div>
        <form action="/logout">
        <div class= "hex flex">
        <h1>Album hex :</h1>
        <h1 id="tester"></h1>
        
        </div>
<input onclick= "clearimg()" type="submit" value="Upload Another Image" />
</form>    
        </div>



</c:when>

<c:when test="${sessionpic == 'rgb(155, 141, 123)'}">

 <div class="allcontain">
        
        
<h3>The album that most closely resembles your image is:</h3>

            <h1 class="name">Blonde</h1>
        
        
            <div class="outfitdisplay flex">
                <div class="album">
                    <img id="album" height= "500" width="800" id="shirt" src="images/album3.png">
                </div>
            </div>
            <div class="albuminfo flex">
            <p>Artist:</p>
        <a href="https://open.spotify.com/artist/2h93pZq0e7k5yf4dywlkpM?si=8JrCLxwPQV-ndlw8qqlf0Q" target="_blank">Frank Ocean</a>
        <a class="link" href="https://open.spotify.com/album/3mH6qwIy9crq0I9YQbOuDf?si=sfCedZpUTziLGlfBSS7rJQ" target="_blank">Album Songs</a>
            </div>
        <form action="/logout">
        <div class= "hex flex">
        <h1>Album hex :</h1>
        <h1 id="tester"></h1>
        
        </div>
<input onclick= "clearimg()" type="submit" value="Upload Another Image" />
</form>    
        </div>

</c:when>

<c:otherwise>


</c:otherwise>

</c:choose>
</body>
<script type="text/javascript" src="/js/custom.js"></script>
</html>