<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>Java Jest Sample</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style/main.css"/>
</head>
<body>

<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a href='<spring:url value="/" htmlEscape="true"/>' class="brand">Searchly Java Sample</a>

            <div class="nav-collapse">
                <ul class="nav">
                    <li><a href='<spring:url value="/" htmlEscape="true"/>'>Home</a></li>
                    <li><a href='<spring:url value="/about" htmlEscape="true"/>'>About</a></li>
                    <li><a href='<spring:url value="/search/create" htmlEscape="true"/>'>Create Articles</a></li>
                </ul>
                <ul class="nav pull-right">
                    <li class="divider-vertical"></li>
                    <form action='<spring:url value="/search" htmlEscape="true"/>' method="get" class="navbar-search pull-left">
                        <input type="text" placeholder="Search" class="search-query span2" name="q">
                    </form>
                </ul>
            </div>
            <!-- /.nav-collapse -->
        </div>
    </div>
    <!-- /navbar-inner -->
</div>
<div class="container">

