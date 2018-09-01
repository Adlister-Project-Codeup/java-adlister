<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
    <%--<link rel="stylesheet" type="text/css" href="css/main.css">--%>
    <style>
        #container {
            overflow-x: scroll;
            overflow-y: hidden;
            white-space: nowrap;
        }
        .cardAd {
            border: 1px solid #f2f2f2;
            display: inline-block;
            height: 250px;
            overflow: hidden !important;
            padding: 25px;
            margin-right: 20px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            background-image: radial-gradient(white, white, #e6eeff);
        }
        a:link, a:visited, a:hover {
            color: black;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <div class="row pt-3">
            <div class="col-7">
                <h1>Gregslist</h1>
                <%--<h4 style="font-size:3vw;">--%>
                <h4>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda dolores earum eius illo itaque iure, iusto labore laborum</h4>
            </div>
            <div class="col-5">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Not a member yet?</h5>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                        <form action="/register" method="GET">
                            <a href="/register" class="btn btn-primary">Register</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <form class="row pt-" action="/ads" method="GET">
            <a href="/category?value=0">View all recent</a>
        </form>
        <div id="container">
            <c:forEach var="ad" items="${all}">
                <a href="/viewAd?adId=${ad.id}">
                    <div class="cardAd col-md-4">
                        <h2>${ad.title}</h2>
                        <p>${ad.description}</p>
                        <p>Categories: ${ad.catString}</p>
                        <br>
                        <p>Created by: ${ad.username} on, ${ad.dateMade} </p>
                    </div>
                </a>
            </c:forEach>
        </div>

        <%--<form class="row pt-4" action="/category" method="GET">--%>
            <%--<a href="/category?value=7">Cars</a>--%>
        <%--</form>--%>
        <%--<div id="container">--%>
            <%--<c:forEach var="ad" items="${cars}">--%>
                <%--<a href="/viewAd?adId=${ad.id}">--%>
                    <%--<div class="myCard cardAd">--%>
                        <%--<h2>${ad.title}</h2>--%>
                        <%--<p>${ad.description}</p>--%>
                        <%--<p>Categories: ${ad.catString}</p>--%>
                        <%--<br>--%>
                        <%--<p>Created by: ${ad.username} on, ${ad.dateMade} </p>--%>
                    <%--</div>--%>
                <%--</a>--%>
            <%--</c:forEach>--%>
        <%--</div>--%>

        <%--<form class="row pt-4" action="/category" method="GET">--%>
            <%--<a href="/category?value=3">Computers</a>--%>
        <%--</form>--%>
        <%--<div id="container">--%>
            <%--<c:forEach var="ad" items="${computers}">--%>
                <%--<a href="/viewAd?adId=${ad.id}">--%>
                    <%--<div class="myCard cardAd">--%>
                        <%--<h2>${ad.title}</h2>--%>
                        <%--<p>${ad.description}</p>--%>
                        <%--<p>Categories: ${ad.catString}</p>--%>
                        <%--<br>--%>
                        <%--<p>Created by: ${ad.username} on, ${ad.dateMade} </p>--%>
                    <%--</div>--%>
                <%--</a>--%>
            <%--</c:forEach>--%>
        <%--</div>--%>

        <%--<form class="row pt-4" action="/category" method="GET">--%>
            <%--<a href="/category?value=5">Jobs</a>--%>
        <%--</form>--%>
        <%--<div id="container">--%>
            <%--<c:forEach var="ad" items="${jobs}">--%>
                <%--<a href="/viewAd?adId=${ad.id}">--%>
                    <%--<div class="myCard cardAd">--%>
                        <%--<h2>${ad.title}</h2>--%>
                        <%--<p>${ad.description}</p>--%>
                        <%--<p>Categories: ${ad.catString}</p>--%>
                        <%--<br>--%>
                        <%--<p>Created by: ${ad.username} on, ${ad.dateMade} </p>--%>
                    <%--</div>--%>
                <%--</a>--%>
            <%--</c:forEach>--%>
        <%--</div>--%>

        <%--<form class="row pt-4" action="/category" method="GET">--%>
            <%--<a href="/category?value=8">Furniture</a>--%>
        <%--</form>--%>
        <%--<div id="container">--%>
            <%--<c:forEach var="ad" items="${furniture}">--%>
                <%--<a href="/viewAd?adId=${ad.id}">--%>
                    <%--<div class="myCard cardAd">--%>
                        <%--<h2>${ad.title}</h2>--%>
                        <%--<p>${ad.description}</p>--%>
                        <%--<p>Categories: ${ad.catString}</p>--%>
                        <%--<br>--%>
                        <%--<p>Created by: ${ad.username} on, ${ad.dateMade} </p>--%>
                    <%--</div>--%>
                <%--</a>--%>
            <%--</c:forEach>--%>
        <%--</div>--%>




        <%--<div class="row pt-1">--%>
            <%--<div class="col-4">--%>
                <%--<img style="height: 200px" class="d-block w-100" src="http://media.caranddriver.com/images/17q4/692996/2019-mclaren-senna-hypercar-official-photos-and-info-news-car-and-driver-photo-698055-s-original.jpg" alt="First slide">--%>
            <%--</div>--%>
            <%--<div class="col-4">--%>
                <%--<img style="height: 200px" class="d-block w-100" src="https://www.popsci.com/sites/popsci.com/files/styles/1000_1x_/public/images/2018/03/senna.jpg?itok=eYNPMGjA&fc=50,50" alt="Second slide">--%>
            <%--</div>--%>
            <%--<div class="col-4">--%>
                <%--<img style="height: 200px" class="d-block w-100" src="https://amp.businessinsider.com/images/592f4169b74af41b008b5977-750-563.jpg" alt="Third slide">--%>
            <%--</div>--%>
        <%--</div>--%>

        <%-- ALL OTHER PAGES NEED THIS TAG--%>
        <jsp:include page="WEB-INF/partials/js-script.jsp" />

        <footer class="pt-4 pb-4">
            <ul class="nav nav-pills nav-fill">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Categories</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="/ads">Recent</a>
                        <a class="dropdown-item" href="/category?value=1">Sports</a>
                        <a class="dropdown-item" href="/category?value=2">Camping</a>
                        <a class="dropdown-item" href="/category?value=3">Computers</a>
                        <a class="dropdown-item" href="/category?value=4">Phones</a>
                        <a class="dropdown-item" href="/category?value=5">Jobs</a>
                        <a class="dropdown-item" href="/category?value=6">Clothing</a>
                        <a class="dropdown-item" href="/category?value=7">Cars</a>
                        <a class="dropdown-item" href="/category?value=8">Furniture</a>
                        <a class="dropdown-item" href="/category?value=9">Other</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" onclick="topFunction()" id="myBtn" title="Go to top">Top</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Another Link</a>
                </li>
            </ul>
        </footer>
    </div>
</body>
</html>
