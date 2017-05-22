<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 15.05.2017
  Time: 20:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
    <title>Opendata.cz - Alternativní informační systém o veřejných zakázkách v ČR</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="keywords" content=""/>
    <meta name="Robots" content="all"/>
    <meta name="language" content="Czech"/>
    <meta charset="UTF-8">

    <!-- jquery -->
    <script type="text/javascript" src="static/js/jquery.min.js"></script>
    <script type="text/javascript" src="static/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="static/js/jquery.multifile.min.js"></script>
    <script type="text/javascript" src="static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="static/js/application.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link type="text/css" href="static/css/jquery-ui.min.css" rel="stylesheet" />
    <link type="text/css" href="static/css/jquery-ui.theme.min.css" rel="stylesheet" />
    <link type="text/css" href="static/css/style.css" rel="stylesheet" />
</head>

<body id="top">
<div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="brand" href="/"><span class="brand_name">&nbsp;Opendata.cz</span></a>
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

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
</div>

<div class="wrapper startpage">
    <div name="top" class="container text-center header" id="content">
        <div class="row">
                    <span class="portal_name">
                       &nbsp;Opendata.cz
                    </span>
            <p class="teaser">
                Alternativní informační systém o veřejných zakázkách v ČR
            </p>
        </div>

        <div class="search_form row">
            <div class="col-xs-8 col-xs-offset-2 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4 col-lg-4 col-lg-offset-4">
                <form class="form-horizontal" action="/tenders/search/tenderList" method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" name="tender_name" id="tender_name" value="" placeholder="jméno zakázky"/>
                            <span class="input-group-btn">
                                <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search icon-white"></span></button>
                                    </span>

                        </div>
                        <p>
                        </p>
                    </div>
                </form>
            </div>
        </div>

        <div class="start_boxes">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                    <div class="well">
                        <h3>Zakázky</h3>
                        <p>
                            Zakázky realizované podle zákona o veřejných zakázkách, tj. mimo malého rozsahu.
                        </p>
                        <a class="btn btn-primary btn-large" href="/tenders/search/" ><span class="glyphicon glyphicon-search"></span>
                            Hledat</a>

                    </div>
                </div>

                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                    <div class="well">
                        <h3>Zadavatelé</h3>
                        <p>
                            Subjekty, které jsou povinny postupovat podle zákona o veřejných zakázkách (veřejní, sektoroví, dotovovaní zadavatelé).
                        </p>
                        <a class="btn btn-primary btn-large" href="/buyers/search/" ><span class="glyphicon glyphicon-search"></span>
                            Hledat</a>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                    <div class="well">
                        <h3>Dodavatelé</h3>
                        <p>
                            Dodavatele předmětu veřejných zakázek, kteří byli vybráni na základě zadávacího řízení podle zákona o veřejných zakázkách.
                        </p>
                        <a class="btn btn-primary btn-large" href="/suppliers/search/" ><span class="glyphicon glyphicon-search"></span>
                            Hledat</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="push">
    </div>
</div>

<div class="footer">
    <div class="container">
        <div class="row footer-row">
            <div class="col-xs-4 col-md-3 col-md-offset-1 col-sm-3 col-sm-offset-1 col-lg-2 col-lg-offset-2">
                <ul class="">
                    <li><a href="/faq/">Často kladené otázky</a></li>
                    <li><a href="/data/">Data</a></li>
                    <li><a href="/about_project/">O projektu</a></li>

                </ul>
            </div>
            <div class="col-xs-4 col-md-4 col-sm-4 col-lg-4 text-center">
                hlavni partner<br><br>
            </div>
            <div class="col-xs-4 col-md-3 col-sm-3 col-lg-2 text-center">
                dodavatel dat a provozovatel<br><br>
            </div>
        </div>
    </div>
</div>
</body>
</html>

