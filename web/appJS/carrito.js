$(document).ready(function(){
    
    // Añadir productos del carrito --------------
    
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

            $('.productsCar').append('<div class="ProCar row" name="'+nombre+'">'
                +'<div class="col-md-12">'
                +'<div class="row">'
                    +'<div class="nombreProCar col-md-12">'
                    +nombre
                    +'</div>'
                +'</div>'
                +'<div class="row">'
                    +'<div class="col-md-12">'
                        +'<div class="precioProCar pull-left" name="'+nombre+'">'
                        +precio +'<span>x</span>'
                        +'</div>'
                        +'<div class="cantProCar pull-left" name="'+nombre+'">'
                        +cantidad
                        +'</div>'
                        +'<button id="borrarProduc" name="'+nombre+'" class="pull-right glyphicon glyphicon-remove"></button>'
                    +'</div>'
                +'</div>'
                +'</div>'
                +'</div>');

            $('#total').html(total + (precio*cantidad));
        
        }
    });
    
    // Borrar productos del carrito ----------
    
    $(document).on('click','#borrarProduc',function(){
        var producto = this.name;
        var precio = parseInt($('.precioProCar[name|="'+producto+'"]').html());
        var cantidad = parseInt($('.cantProCar[name|="'+producto+'"]').html());
        var total = parseInt($('#total').html()); 

        $('.ProCar[name|="'+producto+'"]').remove();
        $('#total').html( total - (precio*cantidad) );
        
    });
    
});


