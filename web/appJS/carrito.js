$(document).ready(function(){
    
    $(document).on('click','#añadir',function(){
        
        var producto = this.name;
        if( $('.ProCar[name|="'+producto+'"]').length > 0 ){
            
            var cantidad = parseInt($('.cantProCar[name|="'+producto+'"]').html());
            var precio = parseInt($('.precioProCar[name|="'+producto+'"]').html());
            var cantidadPlus = parseInt($('input[name|="'+producto+'"]').val());
            $('.cantProCar[name|="'+producto+'"]').html(cantidad+cantidadPlus);
        
            var total = parseInt($('#total').html()); 
            
            $('#total').html( total + (precio*cantidadPlus) );
        
        }else{
            
            var nombre = $('.nombre[name|="'+producto+'"]').html();
            var cantidad = parseInt($('input[name|="'+producto+'"]').val());
            var precio = parseInt($('.precio[name|="'+producto+'"]').html());
            var total = parseInt($('#total').html());

            $('.productsCar').append('<div class="ProCar" name="'+nombre+'">'
                +'<div class="nombreProCar">'
                +nombre
                +'</div>'
                +'<div class="precioProCar" name="'+nombre+'">'
                +precio
                +'</div>'
                +'<span>x</span>'
                +'<div class="cantProCar" name="'+nombre+'">'
                +cantidad
                +'</div>'
                +'<button id="borrarProduc" name="'+nombre+'" class="glyphicon glyphicon-remove"></button>'
                +'</div>');

            $('#total').html(total + (precio*cantidad));
        
        }
    });
    
    $(document).on('click','#borrarProduc',function(){
        var producto = this.name;
        var precio = parseInt($('.precioProCar[name|="'+producto+'"]').html());
        var cantidad = parseInt($('.cantProCar[name|="'+producto+'"]').html());
        var total = parseInt($('#total').html()); 

        $( '.ProCar[name|="'+producto+'"]' ).remove();
        $('#total').html( total - (precio*cantidad) );
        
    });
    
});


