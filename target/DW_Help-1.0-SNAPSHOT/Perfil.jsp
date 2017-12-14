<%-- 
    Document   : Perfil
    Created on : 12/12/2017, 23:40:31
    Author     : lukas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Perfil</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/styles.css">
        <link rel="stylesheet" href="assets/css/untitled.css">
    </head>
    <c:set var="username" scope="session" value="${session}"></c:set>
    <c:if test="${sessionScope.username == null}">
        <c:redirect url="index.jsp"></c:redirect>
    </c:if>
    <body>
        <nav class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand navbar-link icone" href="#"> <img src="assets/img/Logo_small.png" class="icone"></a>
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
        </nav><img src="assets/img/Home.jpg" width="100%" height="auto" class="fundo_2">
        <div class="div_1">
             <c:if test="${sessionScope.username != null}">
            <h1 class="text-center h_1">Bem vindo ao seu Perfil <c:out value="${sessionScope.username}"/> </h1> 
            </c:if>
            <p class="lead text-center texto_1">Aqui no seu perfil o controle é totalmente seu, você pode usar suas informaçoes de forma segura para solicitar nossos serviços na página "Contratos". Assim você poderá ter certeza de que o seu evento está em boas mãos e que não faltará diversão
                em suas festas.</p>
        </div>
        <div class="div_1">
            <h1 class="text-center h_1">O que Fazer?</h1>
            <p class="lead text-center texto_1">Para Solicitar serviços voce pode entrar na página de Novos contratos, Para exportar Aquivos PDF de seus contratos entre em Contratos, lá você pode gerenciar todos os contratos existentes. Para mais informações vá ate a pagina de informações.
                Todos os links de Acesso estão nos botões abaixo.</p>
        </div>
        <div class="acoes">
            <button class="btn btn-success btn-lg" type="button"><i class="glyphicon glyphicon-list-alt"></i> - Novo Contrato</button>
            <button class="btn btn-primary btn-lg" type="button"><i class="glyphicon glyphicon-inbox"></i> - Contratos </button>
            <a href="Sair"><button  class="btn btn-danger btn-lg" ><i class="glyphicon glyphicon-off"></i> - Sair </button></a>
        </div>
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    </body>

</html>
