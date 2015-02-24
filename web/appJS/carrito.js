$(document).ready(function(){
    
    var productosCarrito = [];
    var encontrado = false; 
    
    // Añadir productos del carrito --------------
    
    $(document).on('click','#añadir',function(){
        
        var producto = this.name;
        if( $('.ProCar[name|="'+producto+'"]').length > 0 ){
            
            // Obtener datos
            var id = parseInt($('.id[name|="'+producto+'"]').val());
            var cantidad = parseInt($('.cantProCar[name|="'+producto+'"]').html());
            var precio = parseInt($('.precioProCar[name|="'+producto+'"]').html());
            var cantidadPlus = parseInt($('.cantidad[name|="'+producto+'"]').val());
            var total = parseInt($('#total').html()); 

            //Cambiar la cantidad de este producto en el array de compra
            for ( i = 0; i < productosCarrito.length && !encontrado; i++) { 
                if( productosCarrito[i].id === id ){
                    productosCarrito[i].cantidad = productosCarrito[i].cantidad+cantidadPlus; 
                    encontrado = true;
                }
            }
            encontrado= false;
            
            console.log(productosCarrito);
            
            // Cambiar la cantidad en la vista
            $('.cantProCar[name|="'+producto+'"]').html(cantidad+cantidadPlus);
            $('#total').html( total + (precio*cantidadPlus) );
            
        }else{
            // Obtener datos
            var id = parseInt($('.id[name|="'+producto+'"]').val());
            var nombre = $('.nombre[name|="'+producto+'"]').html();
            var cantidad = parseInt($('.cantidad[name|="'+producto+'"]').val());
            var precio = parseInt($('.cuantia[name|="'+producto+'"]').html());
            var total = parseInt($('#total').html());
            
            //Meter el producto en el array de compra
            var producto = { id:id, cantidad:cantidad };
            productosCarrito.push( producto );
            
            console.log(producto);
            
            // Visualizar producto comprado
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
        var id = parseInt($('.id[name|="'+producto+'"]').val());
        var precio = parseInt($('.precioProCar[name|="'+producto+'"]').html());
        var cantidad = parseInt($('.cantProCar[name|="'+producto+'"]').html());
        var total = parseInt($('#total').html()); 
        
        console.log("carrito: "+productosCarrito);
        console.log("longitud tabla: "+productosCarrito.length);
        
        for ( i = 0; i < productosCarrito.length && !encontrado; i++) { 
            console.log("id productos: "+productosCarrito[i].id);
            if( productosCarrito[i].id === id ){
                encontrado = true;
                console.log(encontrado);
                console.log("valor de i: "+i);
                /*borro un elemento a partir del indice del producto a borrar, que seria ese producto*/
                productosCarrito.splice(i,1) ; 
            }
        }
        encontrado = false;
        
        console.log(productosCarrito);
        
        $('.ProCar[name|="'+producto+'"]').remove();
        $('#total').html( total - (precio*cantidad) );
        
    });
   
   // Mostrar carrito cuando la pantalla es pequeña ------------
   
    var iconoCar = $('.iconoCarrito');
    var carrito = $('.container-fluid>.carrito');
    var appWrapper = $('.appWrapper');

    iconoCar.click(function(){
       carrito.show();
       appWrapper.fadeTo(400,0.3);
    });
    
    var iconoCerrarCarro = $('.cerrarCarroPeq');
    
    iconoCerrarCarro.click(function(){
       carrito.hide();
       appWrapper.fadeTo(400,1);
    });
    
    // Mover carrito en pantallas pequeñas
    
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
            carroCajon.css('top','70px');
        }
    });

    // Realizar pedido
    
    
    $('#actualizar').on('click',function(){
        var elementos = JSON.stringify(productosCarrito);
        $('#inputCarro').val( elementos );
    });
    
    /*
    $('#botonComprar').on('click',function(){
        /*
        var JSONcompra;
        console.log(productosCarrito);
        */
       /*
        $.ajax({
            url: "oneProduct.jsp",
            type: "POST",
            data:  { carrito : productosCarrito },
            success: function(){
                alert("exito");
            }
        });
    
    });
    */
});


