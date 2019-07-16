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
                            <h2>Category</h2>
                            <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                Sportswear
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="sportswear" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul>
                                                <li><a href="">Nike </a></li>
                                                <li><a href="">Under Armour </a></li>
                                                <li><a href="">Adidas </a></li>
                                                <li><a href="">Puma</a></li>
                                                <li><a href="">ASICS </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordian" href="#mens">
                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                Mens
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="mens" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul>
                                                <li><a href="">Fendi</a></li>
                                                <li><a href="">Guess</a></li>
                                                <li><a href="">Valentino</a></li>
                                                <li><a href="">Dior</a></li>
                                                <li><a href="">Versace</a></li>
                                                <li><a href="">Armani</a></li>
                                                <li><a href="">Prada</a></li>
                                                <li><a href="">Dolce and Gabbana</a></li>
                                                <li><a href="">Chanel</a></li>
                                                <li><a href="">Gucci</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordian" href="#womens">
                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                Womens
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="womens" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul>
                                                <li><a href="">Fendi</a></li>
                                                <li><a href="">Guess</a></li>
                                                <li><a href="">Valentino</a></li>
                                                <li><a href="">Dior</a></li>
                                                <li><a href="">Versace</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Kids</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Fashion</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Households</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Interiors</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Clothing</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Bags</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Shoes</a></h4>
                                    </div>
                                </div>
                            </div><!--/category-productsr-->

                            <div class="brands_products"><!--brands_products-->
                                <h2>Brands</h2>
                                <div class="brands-name">
                                    <ul class="nav nav-pills nav-stacked">
                                        <li><a href=""> <span class="pull-right">(50)</span>Acne</a></li>
                                        <li><a href=""> <span class="pull-right">(56)</span>GrÃ¼ne Erde</a></li>
                                        <li><a href=""> <span class="pull-right">(27)</span>Albiro</a></li>
                                        <li><a href=""> <span class="pull-right">(32)</span>Ronhill</a></li>
                                        <li><a href=""> <span class="pull-right">(5)</span>Oddmolly</a></li>
                                        <li><a href=""> <span class="pull-right">(9)</span>Boudestijn</a></li>
                                        <li><a href=""> <span class="pull-right">(4)</span>RÃ¶sch creative culture</a></li>
                                    </ul>
                                </div>
                            </div><!--/brands_products-->

                            <div class="price-range"><!--price-range-->
                                <h2>Price Range</h2>
                                <div class="well">
                                    <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
                                    <b>$ 0</b> <b class="pull-right">$ 600</b>
                                </div>
                            </div><!--/price-range-->



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
        <script src="js/price-range.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
        
    </body>
</html>