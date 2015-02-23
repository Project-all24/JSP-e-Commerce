$(document).ready(function(){
    
    $('#botonComprar').on('click',function(){
        
        var JSONcompra;
        
        console.log( $('.ProCar') );
        
        $( ".ProCar" ).each(function( index ) {
            console.log( index + ": " + $( this ) );
        });
        
    });
    
});


