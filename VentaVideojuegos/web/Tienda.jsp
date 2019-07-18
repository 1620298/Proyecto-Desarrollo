<%--
    Document   : BievenidoUsuario
    Created on : 03-jun-2019, 22:18:11
    Author     : MI PC
--%>

<%@page import="Controlador.ControladorProducto"%>
<%@page import="DTO.UsuarioDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@include file="/header.jsp"%>
<%
    ControladorProducto cp = new ControladorProducto();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">

        <link rel="shortcut icon" href="images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
        <title>JSP Page</title>
    </head>
    <body>
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="left-sidebar">
                            <h2>Categorias</h2>
                            <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                Nintendo
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="sportswear" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul>
                                                <li><a href="">CONSOLAS SWITCH</a></li>
                                                <li><a href="">CONSOLAS 3DS/2DS</a></li>
                                                <li><a href="">JUEGOS SWITCH</a></li>
                                                <li><a href="">JUEGOS 3DS</a></li>
                                                <li><a href="">JUEGOS WII U</a></li>
                                                <li><a href="">JOY-CON SWITCH</a></li>
                                                <li><a href="">MANDOS SWITCH</a></li>
                                                <li><a href="">JAMIIBO</a></li>
                                                <li><a href="">NINTENDO LABO</a></li>
                                                <li><a href="">SUSCRIPCIÓN</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordian" href="#mens">
                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                PlayStation
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="mens" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul>
                                                <li><a href="">CONSOLAS PS4</a></li>
                                                <li><a href="">PLAYSTATION VR</a></li>
                                                <li><a href="">JUEGOS PS4</a></li>
                                                <li><a href="">JUEGOS PS VR</a></li>
                                                <li><a href="">JUEGOS PS3</a></li>
                                                <li><a href="">JUEGOS PS VITA</a></li>
                                                <li><a href="">MANDOS PS4</a></li>
                                                <li><a href="">MANDOS PS3</a></li>
                                                <li><a href="">ACCESORIOS</a></li>
                                                <li><a href="">TARJETAS PREPAGO / SUSCRIPCIÓN</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordian" href="#womens">
                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                Xbox
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="womens" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul>
                                                <li><a href="">CONSOLAS</a></li>
                                                <li><a href="">JUEGOS XBOX ONE</a></li>
                                                <li><a href="">JUEGOS XBOX 360</a></li>
                                                <li><a href="">MANDOS XBOX ONE</a></li>
                                                <li><a href="">ACCESORIOS XBOX</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                
                            </div><!--/categoria-productos-->

                            <div class="brands_products">
                                <h2>ACCESORIOS</h2>
                                <div class="brands-name">
                                    <ul class="nav nav-pills nav-stacked">
                                        <li><a href=""> AUDÍFONOS</a></li>
                                        <li><a href=""> MOUSE</a></li>
                                        <li><a href=""> TECLADOS</a></li>
                                        <li><a href=""> TARJETAS DE SUSCRIPCIÓN</a></li>
                                        <li><a href=""> TIMONES</a></li>
                                        
                                    </ul>
                                </div>
                            </div>
                            <br>
                            
                            <div class="brands_products">
                                <h2>Articulos</h2>
                                <div class="brands-name">
                                    <ul class="nav nav-pills nav-stacked">
                                        <li><a href=""> PROMOCIONES</a></li>
                                        <li><a href=""> FUNKO</a></li>
                                        <li><a href=""> COLECCIONABLES</a></li>
                                        <li><a href=""> AUDIO</a></li>
                                       
                                        
                                    </ul>
                                </div>
                            </div>

                            



                        </div>
                    </div>

                    <div class="col-sm-9 padding-right">
                        <div class="features_items"><!--features_items-->
                            <h2 class="title text-center">Juegos</h2>
                            <!--Cargar productos-->

                            <%= cp.getProductos()%>


                            <ul class="pagination">
                                <li class="active"><a href="">1</a></li>
                                <li><a href="">2</a></li>
                                <li><a href="">3</a></li>
                                <li><a href="">&raquo;</a></li>
                            </ul>
                        </div><!--features_items-->
                    </div>
                </div>
            </div>
        </section>
<%@include file="/Footer.jsp"%>
        <script src="js/jquery.js"></script>
        
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
        
    </body>
</html>