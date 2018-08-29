<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Logo ??</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="../index.jsp"><i class="fa fa-fw fa-home"></i> Home <span class="sr-only">(current)</span></a>
            </li>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </ul>
        <span class="navbar-text">
            <ul class="navbar-nav mr-auto">
            <c:choose>
                <c:when test="${sessionScope.user != null}">
                     <li class="nav-item active">
                        <a class="nav-link" href="/ads/create"><i class="fab fa-buysellads"></i> Create Ad <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/profile"><i class="fa fa-fw fa-user"></i> Profile <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/logout"><i class="fas fa-sign-out-alt"></i> Logout <span class="sr-only">(current)</span></a>
                    </li>
                </c:when>
                <c:otherwise>
                    <li class="nav-item active">
                        <a class="nav-link" href="/login"> Login <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/register"><i class="fa fa-list" aria-hidden="true"></i> Register <span class="sr-only">(current)</span></a>
                    </li>
                </c:otherwise>
            </c:choose>
            </ul>
        </span>
    </div>
</nav>