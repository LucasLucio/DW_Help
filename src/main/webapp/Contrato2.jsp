<%-- 
    Document   : Contrato2
    Created on : 14/12/2017, 00:59:56
    Author     : lukas
--%>

<%@page import="Entidades.Servicos"%>
<%@page import="Entidades.ServicosDescricaoPK"%>
<%@page import="Entidades.ServicosDescricao"%>
<%@page import="DAOs.DAOServicosDescricao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="Entidades.Contrato"%>
<%@page import="Entidades.Pessoa"%>
<%@page import="Entidades.Pessoa"%>
<%@page import="java.util.List"%>
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
        <%
            Entidades.Contrato Contrato = new Entidades.Contrato();
            DAOs.DAOContrato daoContrato = new DAOs.DAOContrato();
            Entidades.Pessoa pessoa = new Entidades.Pessoa();
            DAOs.DAOPessoa daoPessoa = new DAOs.DAOPessoa();
            String user = (String) session.getAttribute("username");
            List<Pessoa> list = daoPessoa.listByLogin(user);
            pessoa = list.get(0);
            List<Contrato> list2 = daoContrato.list();
            String data = "Não Tem";
            for (Contrato c : list2) {
                if (c.getValorContrato() == -1000 && c.getPessoaIdPessoas() == pessoa) {
                    Date Data = c.getDataContrato();
                    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                    data = sdf.format(Data);
                }
            }

        %>
        <p class="text-uppercase text-center text-success"><strong>Itens Disponiveis para a Data:       <%=data%> </strong></p>
        <form>
            <ul class="list-group">
                <%
                    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                    DAOServicosDescricao daoServicosDescricao = new DAOServicosDescricao();
                    List<ServicosDescricao> dados = daoServicosDescricao.list();
                    DAOs.DAOServicos obj = new DAOs.DAOServicos();
                    List<Servicos> lista = obj.list();
                    int ver = 0;
                    for (Servicos s : lista) {
                        for (ServicosDescricao linha : dados) {
                            String[] aux3 = String.valueOf(linha).split(";");
                            ServicosDescricaoPK Sdp = new ServicosDescricaoPK();
                            ServicosDescricao Sd = new ServicosDescricao();
                            Sd = daoServicosDescricao.obter(linha.getServicosDescricaoPK());
                            String dataServ = sdf.format(Sd.getDataServico());

                            if (dataServ.equals(data)) {
                                ver = 1;
                            }
                        }
                        if (ver == 0) {
                            String Serv = "Serviço: " + s.getNome() + " - Valor: " + s.getValor();
                            ver = 0;
                %>
                <li class="list-group-item">
                    <input  name="itens" type="checkbox" value=<%= s.getIdServicos()%> ><span> -> <%= Serv%> </span>

                </li>
                <% }
                    }


                %>
            </ul>

            <div>
                <button class="btn btn-success btn-lg" type="submit"><i class="glyphicon glyphicon-ok"></i> - Contratar </button>
                <button class="btn btn-danger btn-lg" type="button"><i class="glyphicon glyphicon-remove"></i> - Cancelar </button>
            </div>
        </form>
        <script src="assets2/js/jquery.min.js"></script>
        <script src="assets2/bootstrap/js/bootstrap.min.js"></script>
    </body>

</html>