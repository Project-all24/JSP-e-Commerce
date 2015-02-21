$(document).ready(function(){
    
    $(document).on('click','#añadir',function(){
        
        var producto = this.name;
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
                +'<button id="borrarProduc" name="'+nombre+'" class="glyphicon glyphicon-remove"></button>'
                +'</div>');
        
        total = total + precio; 
        
        $('#total').html(total);
        
    });
    
    $(document).on('click','#borrarProduc',function(){
        var nombre = this.name;
        $( '.ProCar[name|="'+nombre+'"]' ).remove();
        
    });
    
});


