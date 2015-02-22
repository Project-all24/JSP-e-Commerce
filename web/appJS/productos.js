$(document).ready(function(){
    
    var vistaLista = $(".cambiarVistaLista");
    var vistaCuad = $(".cambiarVistaCuad");
    vistaCuad.hide();
    var producto = $(".producto");
    
    vistaLista.click(function(){
        producto.addClass("col-md-12 col-sm-12");
        producto.removeClass("col-md-4 col-sm-4");
        vistaLista.hide();
        vistaCuad.show();
    });
    
    vistaCuad.click(function(){
        producto.addClass("col-md-4 col-sm-4");
        producto.removeClass("col-md-12 col-sm-12");
        vistaCuad.hide();
        vistaLista.show();
    });
    
});


