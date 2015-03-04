$(document).ready(function(){
    $("#botonBuscar").on("click",function(){
        $.ajax({
            url:"views/productsByName.jsp",
            data:  { nombre : $("#buscaNombre").val() },
            success: function(result){
                $(".divProdu").html(result);
            }
        });
    });
    
    $("#botonMostrarTodo").on("click",function(){
        $.ajax({
            url:"views/allProducts.jsp",
            success: function(result){
                $(".divProdu").html(result);
            }
        });
    });
    
});



