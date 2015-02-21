$(document).ready(function(){
    
    $(document).on('click','#añadir',function(){
        
        var producto = this.name;
        alert();
        var nombre = $('.nombre[name|="'+producto+'"]').html();
        var precio = parseInt($('.precio[name|="'+producto+'"]').html());
        var total = parseInt($('#total').html());
        
        $('.productsCar').append('<div class="ProCar" name="'+nombre+'">'
                +'<div class="nombreProCar">'
                +nombre
                +'</div>'
                +'<div class="nombreProCar">'
                +precio
                +'</div>'
                +'<span id="borrarProduc" name="'+nombre+'" class="glyphicon glyphicon-remove"></span>'
                +'</div>');
        
        total = total + precio; 
        
        $('#total').html(total);
        
    });
    
    $(document).on('click','#borrarProduc',function(){
        var nombre = this.name;
        alert(nombre);
        $( '.ProCar[name|="'+nombre+'"]' ).remove();
        
    });
    
});


