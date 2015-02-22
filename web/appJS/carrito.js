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
                +'<div class="row infoCompraPro">'
                    +'<div class="col-md-12">'
                        +'<div class="precioProCar pull-left" name="'+nombre+'">'
                        +precio
                        +'</div>'
                        +'<span class="pull-left">x</span>'
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
   
   // Mostrar carrito cuando la pantalla es pequeña ------------
   
    var iconoCar = $('.iconoCarrito');
    var carrito = $('.container-fluid>.carrito');
    var appWrapper = $('.appWrapper');

    iconoCar.click(function(){
       carrito.toggle();
       /* La aplicacion se coulta cuando añado esta línea  */
       /*appWrapper.toggle('fijarApp');*/
    });
    
    
    // Mover carrrito en pantallas pequeñas
    
    var header = $(".header");
    var header_h = header.height();
    var headerPro = $('.headerProductos');
    var headerPro_h = headerPro.height();
    
    var carro = $('.productos>.row>.hidden-sm');
    var carroCajon = $('.container-fluid>.carrito');
    
    $(document).on('scroll',function(){
        if ($('body').scrollTop() > header_h ){
            carro.css('position','fixed');
            carro.css('top','0');
            carroCajon.css('position','fixed');
            carroCajon.css('top','0');
        }else{
            carro.css('position','absolute');
            carro.css('top','');
            carroCajon.css('position','absolute');
            carroCajon.css('top','');
        }
    });


            

});


