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
    <script type="text/javascript" src="/static/js/jquery.min.js"></script>
    <script type="text/javascript" src="/static/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/static/js/jquery.multifile.min.js"></script>
    <script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/static/js/application.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link type="text/css" href="/static/css/jquery-ui.min.css" rel="stylesheet" />
    <link type="text/css" href="/static/css/jquery-ui.theme.min.css" rel="stylesheet" />
    <link type="text/css" href="/static/css/style.css" rel="stylesheet" />
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


        <div class="well">
            <legend>Parametry dodavatelé</legend>
            <fieldset>
                <div class="form-group">
                    <label class="col-xs-3 col-sm-3 col-md-3 col-lg-3 control-label" for="supplier_name">
                        Jméno
                    </label>
                    <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
                        <div class="input-group">
                            <input class="form-control" type="text" name="supplier_name" id="supplier_name"  value=""/>
                            <span class="input-group-btn">
    <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Název nebo část názvu dodavatele. Nerozlišuje velikost písmen." data-original-title="Jméno" data-trigger="focus" title="" data-placement="right"><span class="glyphicon glyphicon-question-sign"></span></button>
</span>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-xs-3 col-sm-3 col-md-3 col-lg-3 control-label" for="supplier_ico">
                        IČO
                    </label>
                    <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
                        <div class="input-group">
                            <input class="form-control" type="text" name="supplier_ico" id="supplier_ico"  value=""/>
                            <span class="input-group-btn">
    <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="bottom" data-content="IČO dodavatele. Najde pouze dodavatele u něhož bylo ičo uvedeno. &lt;b&gt;Nalezne proto správně jen cca 30 procent zadavatelů.&lt;/b&gt;" data-original-title="IČO" data-trigger="focus" title="" data-placement="right"><span class="glyphicon glyphicon-question-sign"></span></button>
</span>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>

        <div class="text-center" class="form-actions">
            <input type="hidden" value="1" name="display_search_form" id="display_search_form" />
            <button type="submit" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-search"></span> Vyhledat</button>
        </div>

        </form>
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

