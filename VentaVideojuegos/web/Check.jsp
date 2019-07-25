<%@page import="DTO.Producto"%>
<%@page import="ProductosBD.ControladorProducto"%>
<%@page import="DTO.Articulo"%>
<%@page import="java.util.ArrayList"%>
<%
    HttpSession sesion = request.getSession(true);
    ArrayList<Articulo> articulos = sesion.getAttribute("carrito") == null ? null : (ArrayList<Articulo>) sesion.getAttribute("carrito");
    HttpSession sesionusuario = request.getSession(true);

    UsuarioDTO user = (UsuarioDTO) sesionusuario.getAttribute("usuario");
%>
<%@include file="/header.jsp"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Carro | UwU-games</title>
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
    </head>
    <body>
        
        <section id="cart_items">
            <div class="container">
                <div class="breadcrumbs">
                    <ol class="breadcrumb">
                        <li><a href="#">Inicio</a></li>
                        <li class="active">Revision de Productos</li>
                    </ol>
                </div><!--/breadcrums-->

                <div class="step-one">
                    <h2 class="heading">Paso 1</h2>
                </div>
                <div class="checkout-options">
                    <h3>Nuevo Usuario</h3>
                    <p>Opciones de pago</p>
                    <ul class="nav">
                        <li>
                            <label><input type="checkbox"> Registrar Cuenta</label>
                        </li>
                        <li>
                            <label><input type="checkbox">Invitado</label>
                        </li>
                        <li>
                            <a href=""><i class="fa fa-times"></i>Cancelar</a>
                        </li>
                    </ul>
                </div><!--/checkout-options-->
                <br>
                <br>


                <div class="register-req">
                    <p style="color: black;">Por favor, use Register And Checkout para acceder fácilmente a su historial de pedidos, o use Checkout como invitado.</p>
                </div><!--/register-req-->
                <div class="payment-options">
                    <span>
                        <label><input type="checkbox"> Transferencia bancaria directa</label>
                    </span>
                    <span>
                        <label><input type="checkbox"> Cheque de pago</label>
                    </span>
                    <span>
                        <label><input type="checkbox"> Paypal</label>
                    </span>
                </div>
                <div class="shopper-informations">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="shopper-info">
                                <p>Información del comprador</p>
                                <form>
                                    <input type="text" placeholder="Nombre">
                                    <input type="text" placeholder="Nickname">
                                    <input type="password" placeholder="Contraseña">
                                    <input type="password" placeholder="Confirmar Contraseña">
                                </form>
                                <a class="btn btn-primary" href=""></a>
                                <a class="btn btn-primary" href="">Continuar</a>
                            </div>
                        </div>
                        <div class="col-sm-5 clearfix">
                            <div class="bill-to">
                                <p>Cobrar a</p>
                                <div class="form-one">
                                    <form>
                                        <input type="text" placeholder="Nombre de la Compañia">
                                        <input type="text" placeholder="Email">
                                        
                                        <input type="text" placeholder="Nombre">
                                        
                                        <input type="text" placeholder="Apellidos">
                                        <input type="text" placeholder="Direccion">
                                        
                                    </form>
                                </div>
                                <div class="form-two">
                                    <form>
                                        <input type="text" placeholder="Zip / Codigo Postal  *">
                                        <select>
                                            <option>-- País --</option>
                                            <option>United States</option>
                                            <option>Bangladesh</option>
                                            <option>UK</option>
                                            <option>India</option>
                                            <option>Pakistan</option>
                                            <option>Ucrane</option>
                                            <option>Canada</option>
                                            <option>Dubai</option>
                                        </select>
                                        <select>
                                            <option>-- Estado/ Provincia / Region --</option>
                                            <option>United States</option>
                                            <option>Bangladesh</option>
                                            <option>UK</option>
                                            <option>India</option>
                                            <option>Pakistan</option>
                                            <option>Ucrane</option>
                                            <option>Canada</option>
                                            <option>Dubai</option>
                                        </select>
                                        <input type="password" placeholder="Confirmar Contraseña">
                                        <input type="text" placeholder="telefono *">
                                        <input type="text" placeholder="Celular">
                                        <input type="text" placeholder="Fax">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="order-message">
                                <p>Orden de envío</p>
                                <textarea name="message"  placeholder="Notas acerca de tu pedido" rows="16"></textarea>
                                <label><input type="checkbox"> Envío a dirección de factura</label>
                            </div>	
                        </div>					
                    </div>
                </div>
                <div class="review-payment">
                    <h2>Revisión y pago</h2>
                </div>
                <form method="post" >
                    <div class="table-responsive cart_info" id="cart-conteiner">
                        <table class="table table-condensed" id="shop-table">
                            <thead>
                                <tr class="cart_menu">
                                    <td class="image">Juego</td>
                                    <td class="description">Descripcion</td>
                                    <td class="price">Precio</td>
                                    <td class="quantity">Cantidad</td>
                                    <td class="total">Total</td>
                                    <td></td>
                                </tr>
                            </thead>
                            <tbody>



                                <%
                                    ControladorProducto cp = new ControladorProducto();
                                    double total = 0;
                                    if (articulos != null) {
                                        for (Articulo a : articulos) {
                                            Producto producto = cp.getProducto(a.getIdProducto());
                                            total = total + a.getCantidad() * producto.getPrecio();
                                %>                                         
                                <tr>

                                    <td class="cart_product">
                                        <a href=""><img src="<%= producto.getImg()%>" alt="" width="120"></a>
                                    </td>
                                    <td class="cart_description">
                                        <h4><a href=""><%= producto.getNombre()%></a></h4>
                                        <p id="codprocducto">Web ID: <%= producto.getId()%></p>
                                    </td>
                                    <td class="cart_price">
                                        <p id="precioproducto">$<%= producto.getPrecio()%></p>
                                    </td>
                                    <td class="cart_quantity">
                                        <div class="cart_quantity_button">

                                            <input class="cart_quantity_input" type="text" name="quantity" value="<%= a.getCantidad()%>" autocomplete="off" size="2" readonly>

                                        </div>
                                    </td>
                                    <td class="cart_total">
                                        <p class="cart_total_price">$<%= Math.round(producto.getPrecio() * a.getCantidad() * 100.0) / 100.0%></p> 
                                    </td>
                                    <td class="cart_delete">
                                        <span id="idarticulo" style="display: none"><%= producto.getId()%></span>
                                        <a class="cart_quantity_delete" id="deleteitem"><i class="fa fa-times"></i></a>
                                        <input  hidden name="idpro" value <%= producto.getId()%>>
                                    </td>
                                </tr>
                                <%}
                                }%>



                            </tbody>
                        </table>
                        <% if (articulos == null) {%>
                        <h4>No hay articulos en tu carrito</h4>
                        <%}%>

                    </div>
                    <table>
                        <tr>
                            <td colspan="4">&nbsp;</td>
                            <td colspan="2">
                                <table class="table table-condensed total-result">
                                    <tr>
                                        <td>Cart Sub Total</td>
                                        <td>$<%= Math.round(total * 100.0) / 100.0%></td>
                                    </tr>
                                    <tr>
                                        <td>Exo Tax</td>
                                        <td>$0</td>
                                    </tr>
                                    <tr class="shipping-cost">
                                        <td>Costo de envío</td>
                                        <td>Free</td>										
                                    </tr>
                                    <tr>
                                        <td>Total</td>
                                        <td><span>$<%= Math.round(total * 100.0) / 100.0%></span></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                                    <input class="btn btn-default check_out" type="submit" value="Generar Boleta" >
                </form>

                <br>
                <br>

            </div>
        </section> <!--/#cart_items-->
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>


        <script src="js/main.js"></script>
        <script src="js/Carrito.js"></script>
    </body>
</html>
