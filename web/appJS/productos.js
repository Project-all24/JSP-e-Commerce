$(document).ready(function(){
    
    var vistaLista = $(".cambiarVistaLista");
    var vistaCuad = $(".cambiarVistaCuad");
    vistaCuad.hide();
    var producto = $(".producto");
    
    vistaLista.click(function(){
        producto.addClass("col-md-12 col-sm-12 col-lg-12");
        producto.removeClass("col-md-4 col-sm-4 col-lg-3");
        vistaLista.hide();
        vistaCuad.show();
    });
    
    vistaCuad.click(function(){
        producto.addClass("col-md-4 col-sm-4 col-lg-3");
        producto.removeClass("col-md-12 col-sm-12 col-lg-12");
        vistaCuad.hide();
        vistaLista.show();
    });

});


