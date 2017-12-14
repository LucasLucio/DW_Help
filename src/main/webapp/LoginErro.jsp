<%-- 
    Document   : Login
    Created on : 12/12/2017, 17:09:54
    Author     : lukas
--%>

<%@page import="java.util.List"%>
<%@page import="Entidades.Pessoa"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/styles.css">
        <link rel="stylesheet" href="assets/css/untitled.css">
    </head>

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
        </nav><img src="assets/img/login.jpg" width="100%" height="auto" class="fundo_3">
        <div class="login">
            <h1 class="text-center">Login </h1>
            <form class="form-horizontal logform" id="Login" name="Login" method="post" action="Login">
                <h3>Login </h3>
                <input required id="log" name="log"  class="form-control" type="text" placeholder="Seu Login">
                <h3>Senha </h3>
                <input required  maxlength="32" minlength="8"id="sen" name="sen"  class="form-control" type="password" placeholder="Sua Senha">
                <div class="botao">
                    <div class="btn-group btn-group-justified" role="group">

                        <a id="btEntrar" type="" name="entrar" value="Entrar" class="btn btn-success" role="button"><button id="btEntrar" class="btlog" type="submit" name="entrar" value="Entrar">Entrar</button></a>
                        <a class="btn btn-primary" role="button" href="Cadastro.jsp">Criar </a>
                    </div>
                </div>
            </form>


                <script> alert("Usuário ou Senha errados");</script>

        </div>
        <%
            com.mycompany.help_dw.Cadastro obj = new com.mycompany.help_dw.Cadastro();
            String Cadastrou = obj.getCadastrou();

            if (Cadastrou.equals("sim")) {
                System.out.println("foi");
                obj.setCadastrou("nao");
        %>
                <script> alert("Faça Login com seu novo usuário para continuar...");</script>
        <% }%>
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    </body>

</html>