<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 25.05.2017
  Time: 12:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="keywords" content=""/>
    <meta name="language" content="Czech"/>
    <meta name="robots" content="all, follow" />
    <meta name="description" content="Zakázky - Alternativní informační systém o veřejných zakázkách v ČR"/>
    <meta charset="UTF-8">
    <title>Zakázky - Opendata.cz - Alternativní informační systém o veřejných zakázkách v ČR</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />


    <!-- jquery -->
    <!-- <script type="text/javascript" src="static/js/jquery.min.js"></script>
     <script type="text/javascript" src="static/js/jquery-ui.min.js"></script>
     <script type="text/javascript" src="static/js/jquery.multifile.min.js"></script>
     <script type="text/javascript" src="static/js/bootstrap.min.js"></script>
     <script type="text/javascript" src="static/js/application.js"></script>-->
    <script type="text/javascript" src="js/main.js"></script>

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
        <div id = "tenders">


            <form class="form-horizontal" action="/buyers/search/buyersList" method="post">

                <fieldset>
                    <legend>Parametry zadavatelé</legend>
                    <div class="form-group">

                        <label class="col-xs-3 col-sm-3 col-md-3 col-lg-3 control-label" for="tender_name">
                            Jméno
                        </label>
                        <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">

                            <div class="input-group">
                                <input type="text" class="form-control" name="tender_name" id="tender_name" placeholder="Část jmena zakázky" value=""/>
                                <span class="input-group-btn">
    <!--<button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Název nebo část názvu zakázky. Nerozlišuje velikost písmen. " data-original-title="Jméno" data-trigger="focus" title="" data-placement="right"><span class="glyphicon glyphicon-question-sign"></span></button>-->
    <a href ="#" title = "Název nebo část názvu zakázky. Nerozlišuje velikost písmen. "><span class="glyphicon glyphicon-question-sign"></span></a>
</span>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-xs-3 col-sm-3 col-md-3 col-lg-3 control-label" for="tender_ico">
                            IČO
                        </label>
                        <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
                            <div class="input-group">
                                <input type="text" class="form-control" name="tender_ico" id="tender_ico" placeholder="IČO" value=""/>
                                <span class="input-group-btn">

</span>
                            </div>
                        </div>
                    </div>
                </fieldset>



                <div class="form-actions text-center">
                    <input type="hidden" value="1" name="display_search_form" id="display_search_form" />
                    <button type="submit" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-search"></span> Vyhledat zakázky</button>
                </div>
            </form>

        </div>
    </div>
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
