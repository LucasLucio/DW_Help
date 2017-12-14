<%-- 
    Document   : Contrato1
    Created on : 14/12/2017, 00:24:41
    Author     : lukas
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Novo Contrato</title>
        <link rel="stylesheet" href="assets2/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link rel="stylesheet" href="assets2/fonts/font-awesome.min.css">
        <link rel="stylesheet" href="assets2/css/styles.css">
        <link rel="stylesheet" href="assets2/css/untitled.css">
    </head>
    <c:set var="username" scope="session" value="${session}"></c:set>
    <c:if test="${sessionScope.username == null}">
        <c:redirect url="IndexErro.jsp"></c:redirect>
    </c:if>
    <body>
        <nav class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand navbar-link icone" href="index.jsp"> <img src="assets/img/Logo_small.png" class="icone"></a>
                    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                </div>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li role="presentation"><a href="Inf.jsp">+ Informações</a></li>
                        <li role="presentation"><a href="Cadastro.jsp">Cadastro </a></li>
                        <li role="presentation"><a href="Login.jsp">Login </a></li>
                    </ul>
                </div>
            </div>
        </nav><img src="assets/img/Contrato.jpg" width="100%" height="auto" class="fundo_2">
        <div>
            <h1 class="text-center">Informe a Data para o Contrato</h1>
            <p class="text-center text-success">Informe a Data para o Contrato, assim podemos selecionar os serviços disponiveis para você</p>
            <%
                Date date = new Date();
                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                String DataAtual = sdf.format(date);
                String[] aux = DataAtual.split("/");
                int dia = Integer.valueOf(aux[0])+1;
                String dia2 = String.valueOf(dia);
                DataAtual = aux[2] + "-" + aux[1] + "-" + dia2;
            %>

            <form id="con" name="con" action=Contrato1 method="post">
                <input id="data" name="data" required class="input-lg" type="date" min=<%= DataAtual %>>
            <button class="btn btn-info" type="submit">Enviar </button>
            </form>
        </div>
        <script src="assets2/js/jquery.min.js"></script>
        <script src="assets2/bootstrap/js/bootstrap.min.js"></script>
    </body>

</html>
