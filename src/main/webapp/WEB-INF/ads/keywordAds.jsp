<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <title>Search</title>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="row no-gutters">
        <div id="sideImg" class="col-2 h-100 pt-4 sticky-top">
            <div >
                <nav id="side-nav" class="nav flex-column">
                    <a class="w-text nav-link active pl-5" href="/category?value=0">All</a>
                    <a class="w-text nav-link pl-5" href="/category?value=1"><i class="fa fa-bicycle"></i> Sports</a>
                    <a class="w-text nav-link pl-5" href="/category?value=2"><i class="fa fa-tree"></i> Camping</a>
                    <a class="w-text nav-link pl-5" href="/category?value=3"><i class="fa fa-laptop"></i> Computers</a>
                    <a class="w-text nav-link pl-5" href="/category?value=4"><i class="fa fa-mobile"></i> Phones</a>
                    <a class="w-text nav-link pl-5" href="/category?value=5"><i class="fa fa-briefcase"></i> Jobs</a>
                    <a class="w-text nav-link pl-5" href="/category?value=6"><i class="fa fa-shopping-bag"></i> Clothing</a>
                    <a class="w-text nav-link pl-5" href="/category?value=7"><i class="fa fa-car"></i> Cars</a>
                    <a class="w-text nav-link pl-5" href="/category?value=8"><i class="fa fa-bed"></i> Furniture</a>
                    <a class="w-text nav-link pl-5" href="/category?value=9">Other</a>
                </nav>
            </div>
        </div>

        <div class="col-10">
            <div class="container pb-5 pt-5">
                <h1 class="w-text">All the category of Ads</h1>
                <c:if test="${noResults == true}" >
                    <p class="w-text">We couldn't find any results for <c:out value="${keyword}"/></p>
                </c:if>
                <c:if test="${noResults == false}" >
                    <h3 class="w-text">All ads related to: <c:out value="${keyword}" /></h3>
                    <c:forEach var="ad" items="${ads}" >
                        <a class="blk" href="/viewAd?adId=${ad.id}">
                            <div class="cards mr-3 mb-3">
                                <h2>${ad.title}</h2>
                                <p>${ad.description}</p>
                                <p>Created On: ${ad.dateMade}</p>
                                <p>Categories: ${ad.catString}</p>
                            </div>
                        </a>
                    </c:forEach>
                </c:if>
            </div>
            <jsp:include page="/WEB-INF/partials/js-script.jsp" />
            <jsp:include page="/WEB-INF/partials/footer.jsp" />
        </div>
    </div>
</body>
</html>
