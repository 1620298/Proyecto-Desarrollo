/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function(){
   $('tr #deleteitem').click(function (e){
       e.preventDefault(); 
       var elemento=$(this);
       var idproducto=elemento.parent().find('#idarticulo').text();
        $.ajax({
            url: "DeleteItem",
            type: 'POST',
            data: {idproducto : idproducto},
            success: function (data) {
                elemento.parent().parent().remove();
                var elementotable=$('#shop-table tr');
                if(elementotable.length<=1){
                            $('#cart-conteiner').append("<h4>No hay articulos en tu carrito</h4>");
                        }
                        $('#sub-total').text(data);
                        $('#total').text(data);
            }
        });
   });
  
});
  
