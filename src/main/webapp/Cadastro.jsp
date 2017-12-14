<%-- 
    Document   : Cadastro
    Created on : 01/12/2017, 01:34:10
    Author     : lukas
--%>

<%@page import="DAOs.DAOCidade"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Entidades.Cidade"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cadastro</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/styles.css">
        <link rel="stylesheet" href="assets/css/untitled.css">


        <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="scripts/jquery.mask.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $("#tell").mask("(99)9999-9999");
                $("#rg").mask("99.999.999-9");
                $("#cpf").mask("999.999.999-99");
            });
        </script> 


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
                        <li role="presentation"><a href="#">Pesquisar </a></li>
                        <li role="presentation"><a href="Cadastro.jsp">Cadastro </a></li>
                        <li role="presentation"><a href="Login.jsp">Login </a></li>
                    </ul>
                </div>
            </div>
        </nav><img src="assets/img/Cadastro2.jpg" width="100%" height="auto" class="fundo_1">


        <div class="login">

            <h1 class="text-center">Cadastro </h1>
            <form id="Cadastro" name="Cadastro" class="form-horizontal logform" action=Cadastro method="post">
                <h3>Nome </h3>
                <input  required class="form-control" name="nome" type="text" placeholder="Seu Nome">
                <h3>R.G </h3>
                <input  required id="rg" class="form-control" name="rg" type="text" placeholder="00.000.000-00">
                <h3>CPF </h3>
                <input  required id="cpf" class="form-control" name="cpf" type="text" placeholder="000.000.000-00">
                <h3>Telefone/Celular </h3>
                <input  required id="tell" class="form-control" name="tel" type="text" placeholder="(00) 0000-0000">
                <h3>Email </h3>
                <input  required class="form-control" name="email" type="email" placeholder="SeuEmail@email.com">
                <h3>Login </h3>
                <input  required class="form-control" name="login" type="text" placeholder="Seu Login">
                <h3>Senha</h3>
                <input  required class="form-control" name="senha" type="password"  minlength="8" maxlength="32" placeholder="**********">
                <h3>Data de Nascimento</h3>
                <input  required id="nasc" class="form-control" name="nasc" type="date" placeholder="00/00/0000">
                <h3>Sexo </h3>
                <div class="Sexo">
                    <div class="radio" name="sex" >
                        <label>
                            <input type="radio" name="sex" value="Masculino" required>Masculino</label>
                    </div>
                    <div class="radio">
                        <label name="sex">
                            <input type="radio" name="sex" value="Feminino" required>Feminino</label>
                    </div>
                </div>
                <h3>Cidade</h3>
                <div class="div-select">
                    <select class="selectpicker" name = "cid">
                        <%
                            Cidade obj = new Cidade();
                            DAOCidade obj2 = new DAOCidade();
                            List<Cidade> cidades = obj2.list();
                            String city = "";
                            int num = 1;
                            for (Cidade c : cidades) {
                                city = c.getNome();
                                num = c.getIdCidade();
                        %>
                        <option value=<%= num%>> <%= city%> </option>
                        <% }%>
                    </select>
                </div>
                <div class="botao">
                    <button id ="btCriar" class="btn btn-success btn-lg" type="submit" name="criar" value="criar">Criar Conta</button>
                </div>
            </form>

        </div>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    </body>

</html>