<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 22.05.2017
  Time: 21:21
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
     <%--<script type="text/javascript" src="js/main.js"></script>--%>

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
        <div class = "list table-striped table-bordered table-responsive">

            <table class ="blue">
                <tbody>

                <tr class = "line-heading">
                    <%--<td>amountCzk</td>--%>
                    <%--<td>authorityIdentifier</td>--%>
                    <%--<td>currency</td>--%>
                    <%--<td>dateCreated</td>--%>
                    <%--<td>dateOfExpiry</td>--%>
                    <%--<td>dateOfPayment</td>--%>
                    <%--<td>dueDate</td>--%>
                    <%--<td>inEffect</td>--%>
                    <%--<td>masterId</td>--%>
                    <%--<td>originalCurrencyAmount</td>--%>
                    <%--<td>budgetCategory</td>--%>
                    <td>subject</td>
                    <%--<td>variableSymbol</td>--%>
                    <td>recordId</td>
                    <%--<td>recordType</td>--%>
                    <%--<td>authorityRole</td>--%>
                    <%--<td>retrieval</td>--%>
                    <%--<td>authority</td>--%>
                    <%--<td>partner</td>--%>
                    <%--<td>parentRecord</td>--%>
                    <%--<td>childRecords</td>--%>
                    <%--<td>periodicity</td>--%>
                    <%--<td>unresolvedRelationships</td>--%>
                </tr>
                <c:forEach items="${records}" var="record">
                <tr>
                    <%--<td>${record.amountCzk}</td>--%>
                    <%--<td>${record.authorityIdentifier}</td>--%>
                    <%--<td>${record.currency}</td>--%>
                    <%--<td>${record.dateCreated}</td>--%>
                    <%--<td>${record.dateOfExpiry}</td>--%>
                    <%--<td>${record.dateOfPayment}</td>--%>
                    <%--<td>${record.dueDate}</td>--%>
                    <%--<td>${record.inEffect}</td>--%>
                    <%--<td>${record.masterId}</td>--%>
                    <%--<td>${record.originalCurrencyAmount}</td>--%>
                    <%--<td>${record.budgetCategory}</td>--%>
                    <td>${record.subject}</td>
                    <%--<td>${record.variableSymbol}</td>--%>
                    <td>${record.recordId}</td>
                    <%--<td>${record.recordType}</td>--%>
                    <%--<td>${record.authorityRole}</td>--%>
                    <%--<td>${record.retrieval}</td>--%>
                    <%--<td>${record.authority}</td>--%>
                    <%--<td>${record.partner}</td>--%>
                    <%--<td>${record.parentRecord}</td>--%>
                    <%--<td>${record.childRecords}</td>--%>
                    <%--<td>${record.periodicity}</td>--%>
                    <%--<td>${record.unresolvedRelationships}</td>--%>



                    <%--<>?td>sdsgsdgsdgsloupec7</td>--%>
                    <%--<tdforech ${record.authority}var = "autority">--%>
                        <%--<td>--%>
                        <%--sloupec8</tdforech>--%>
                    <%--<td>sloupec9</td>--%>
                    <%--<td>slousdgsdgsdgsdgspec10</td>--%>
                    <%--<td>sloupe11</td>--%>
                    <%--<td>sloupec12</td>--%>

                </tr>
                </c:forEach>


                </tbody>
            </table>

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
<%--<ul class="breadcrumb"><li><a href = ${linkback}>prev</a></li><li><a href = ${linkforward}>next</a></li></ul>--%>
</body>
</html>
