$(document).ready(function(){
    $("#botonBuscar").on("click",function(){
        $.ajax({
            url:"productsByName.jsp",
            data:  { nombre : $("#buscaNombre").val() },
            success: function(result){
                $(".divProdu").html(result);
            }
        });
    });
    
    $("#botonMostrarTodo").on("click",function(){
        $.ajax({
            url:"allProducts.jsp",
            success: function(result){
                $(".divProdu").html(result);
            }
        });
    });
    
});



