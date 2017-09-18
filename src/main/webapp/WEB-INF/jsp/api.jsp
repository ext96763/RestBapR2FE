<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="keywords" content=""/>
    <meta name="language" content="Czech"/>
    <meta name="robots" content="all, follow" />
    <meta name="description" content="Alternativní informační systém o veřejných zakázkách v ČR"/>
    <meta charset="UTF-8">
    <title>Opendata.cz - Alternativní informační systém o veřejných zakázkách v ČR</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />


    <!-- jquery -->
    <!-- <script type="text/javascript" src="static/js/jquery.min.js"></script>
     <script type="text/javascript" src="static/js/jquery-ui.min.js"></script>
     <script type="text/javascript" src="static/js/jquery.multifile.min.js"></script>
     <script type="text/javascript" src="static/js/bootstrap.min.js"></script>
     <script type="text/javascript" src="static/js/application.js"></script>-->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link type="text/css" href="/static/css/jquery-ui.min.css" rel="stylesheet" />
    <link type="text/css" href="/static/css/jquery-ui.theme.min.css" rel="stylesheet" />
    <link type="text/css" href="/static/css/main.css" rel="stylesheet" />
</head>

<body>
<div class="container">
    <div id="top">
        <h1><a class="brand" href="/"><span class="brand_name">Opendata.cz</span></a></h1>
        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>

        <div class="navbar-collapse collapse" id="navbar-main">
            <ul class="nav navbar-nav navbar-right">

                <li  >
                    <a href="/tenders/search/"><span class="glyphicon glyphicon-search" aria-hidden="true"></span> Zakázky</a>
                </li>

                <li  >
                    <a href="/buyers/search/"><span class="glyphicon glyphicon-search" aria-hidden="true"></span> Zadavatelé</a>
                </li>

                <li  >
                    <a href="/suppliers/search/"><span class="glyphicon glyphicon-search" aria-hidden="true"></span> Dodavatelé</a>
                </li>
            </ul>
        </div>
    </div>


    <div id="main">

        <a href='<c:url value="http://localhost:8081/swagger-ui.html#/main-controller" />'>Dokumentace API</a>
    <%--<div id="footer">--%>

        <%--TODO links--%>
        <%--<ul>--%>
            <%--<li><a href="/api/">API</a></li>--%>
            <%--<li><a href="/data/">Data</a></li>--%>
            <%--<li><a href="/about_project/">O projektu</a></li>--%>
        <%--</ul>--%>
    <%--</div>--%>
    <div id="footer">
        <ul>
            <li><a href="/api/">API</a></li>
            <li><a href="/data/">Data</a></li>
            <li><a href="/about_project/">O projektu</a></li>
        </ul>
    </div>
</div>
</div>
</body>
</html>
