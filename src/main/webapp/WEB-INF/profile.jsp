<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <link rel="stylesheet" href="../css/profile.css" >
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container-fluid">
    <c:if test="${deleteSuccess == true}" >
        <h3 style="color: green">Ad was deleted successfully!</h3>
    </c:if>
    <h1 class="welcome-msg">Welcome back, ${sessionScope.user.username}!</h1>
    <div class="row">
        <div class="col-12">
            <div class="card mb-5" style="width: 25rem;">
                <div class="card-body account-info">
                    <h5 class="card-title"><i class="fas fa-user-circle fa-2x"></i>Account Details:</h5>
                    <p class="card-text">e: ${sessionScope.user.email}</p>
                    <p class="card-text">Member since: <strong>${sessionScope.user.date}</strong></p>
                    <p class="card-text">Number of posted ads: ${numberOfAds}</p>
                    <a href="/profile/edit" class="btn btn-primary text-center">Update/Edit</a></button>
                </div>
            </div>
            <%-- My Ads Title--%>
            <h2 class="ads-title text-center" style="color: white;">My Ads</h2>
            <hr>

        <div class="container">
                <c:forEach var="ad" items="${sessionScope.userAds}" >
                    <%--<div class="grid">--%>
                    <%--<div class="card mb-2 adCards">--%>
                        <a href="/viewAd?adId=${ad.id}">
                            <%--<div class="card-body">--%>
                                <div style="border: 1px solid grey; display: block; float: left; width: 30%; margin-right: 10px; height: 250px;" class="col-md-4">
                            <h3>${ad.title}</h3>
                            <p class="card-text">${ad.description}</p>
                            <p class="card-text"><small class="text-muted">posted on: ${ad.dateMade}</small></p>
                            <p class="card-text"><small class="text-muted">categories: ${ad.catString}</small></p>
                            <a href="/editAd?adId=${ad.id}" class="btn btn-primary edit-btn">Edit Ad</a>
                            <a href="/deleteAd?adId=${ad.id}" class="btn btn-warning delete-btn">Delete Ad</a>
                            </div>
                        </a>

                    <%--</div>--%>
                    <%--</div>--%>
                </c:forEach>
            </div>



        </div>


            <%--<c:forEach var="ad" items="${sessionScope.userAds}" >--%>
                <%--<div class="card w-50 mb-2 adCards">--%>
                    <%--<a href="/viewAd?adId=${ad.id}">--%>
                    <%--<div class="card-body">--%>
                        <%--<h3>${ad.title}</h3>--%>
                        <%--<p class="card-text">${ad.description}</p>--%>
                        <%--<p class="card-text"><small class="text-muted">posted on: ${ad.dateMade}</small></p>--%>
                        <%--<p class="card-text"><small class="text-muted">categories: ${ad.catString}</small></p>--%>
                    <%--</div>--%>
                    <%--</a>--%>
                    <%--<button class="btn btn-success"><a href="/editAd?adId=${ad.id}">Edit Ad</a></button>--%>
                    <%--<button class="btn btn-warning"><a href="/deleteAd?adId=${ad.id}">Delete Ad</a></button>--%>
                <%--</div>--%>
            <%--</c:forEach>--%>
        </div>
    </div>
</div>
</body>
</html>