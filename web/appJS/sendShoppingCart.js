$(document).ready(function(){
    
    $('#botonComprar').on('click',function(){
        
        var JSONcompra;
        
        $( ".nombreProCar" ).each(function( index ) {
            console.log( index + ": " + $( this ).html() );
        });

    });
    
});


