<%-- 
    Document   : Inf
    Created on : 14/12/2017, 03:14:31
    Author     : lukas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <style>
            #map {
                height: 400px;
                width: 100%;
            }
        </style>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Informações</title>
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
        </nav><img src="assets/img/info.jpg" width="100%" height="auto" class="fundo_4">
        <div class="div_1">
            <h1 class="text-center h_1">Para mais Informações</h1>
            <p class="lead text-center texto_1">Para mais informaçoes você pode entrar em contato com a nossa empresa. Assim podemos tirar todas as suas duvidas ou oferecer algum outro serviço.</p>
        </div>
        <ul class="list-group">
            <li class="list-group-item"><i class="fa fa-phone-square"></i><span> Telefone: (44) 3455-5393</span></li>
            <li class="list-group-item"><i class="fa fa-envelope-square"></i><span> Email: EmailDaEmpresa@email;com</span></li>
            <li class="list-group-item"><span>Facebook: </span>
                <a class="btn btn-primary btn-sm" role="button" href="https://www.facebook.com/lukas.lucio.7"> <i class="fa fa-facebook-square"></i></a>
            </li>
            <li class="list-group-item">
                <div id="map">

                </div>
                <script>
                    function initMap() {
                        var uluru = {lat: -24.0611291, lng: -52.3891832};
                        var map = new google.maps.Map(document.getElementById('map'), {
                            zoom: 12,
                            center: uluru

                        });
                        var marker = new google.maps.Marker({
                            position: uluru,
                            map: map
                            
                        });
                    }
                </script>
                <script async defer
                        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDFuywj5j3higig0Nl-23XYayt6dJSc2Yo&callback=initMap">
                </script>
            </li>
        </ul>
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    </body>

</html>
