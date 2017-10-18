<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <!-- Google Analytics -->
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-108366622-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'UA-108366622-1');
    </script>
    <!-- End Google Analytics -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="keywords" content=""/>
    <meta name="language" content="Czech"/>
    <meta name="robots" content="all, follow" />
    <meta name="description" content="Alternativní informační systém o veřejných zakázkách v ČR"/>
    <meta charset="UTF-8">
    <title>Opendata.cz - Alternativní informační systém o veřejných zakázkách v ČR</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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

        <div class="search_form row">
            <div class="col-xs-8 col-xs-offset-2 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4 col-lg-4 col-lg-offset-4">
                <form class="form-horizontal" action="/tenders/search/tendersList" method="post">
                    <div class="input-group">
                        <input type="text" class="form-control" name="tender_name" id="tender_name" value="" required placeholder="jméno zakázky"/>
                        <span class="input-group-btn">
                                <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search icon-white"></span></button>
                                    </span>

                    </div>
                </form>
            </div>
        </div>

        <div id="search_anchors">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                    <div class="well">
                        <h3>Zakázky</h3>
                        <a class="btn btn-primary btn-large" href="/tenders/search/" ><span class="glyphicon glyphicon-search"></span>
                            Hledat</a>

                    </div>
                </div>

                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                    <div class="well">
                        <h3>Zadavatelé</h3>
                        <a class="btn btn-primary btn-large" href="/buyers/search/" ><span class="glyphicon glyphicon-search"></span>
                            Hledat</a>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                    <div class="well">
                        <h3>Dodavatelé</h3>
                        <a class="btn btn-primary btn-large" href="/suppliers/search/" ><span class="glyphicon glyphicon-search"></span>
                            Hledat</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
</body>
</html>
