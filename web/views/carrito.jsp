<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<header class="carrito col-md-3 col-sm-3">
    <div class="row">
        <div class="col-md-12 col-sm-12">
            <div class="row">
                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-10">
                    <h2>Carrito</h2>
                </div>
                <div class="hidden-lg hidden-md hidden-sm col-xs-2">
                    <button class="cerrarCarroPeq pull-right">
                        <span class="glyphicon glyphicon-remove pull-right"></span>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="todoCarro">
        <div class="row">
            <div class="productsCar col-md-12 col-sm-12">

            </div>
        </div>
        <div class="row div-total">
            <div class="col-md-12 col-sm-12">
                <span class="pull-right">Total:<span id="total">0</span></span>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 col-sm-12">
            <form action="../purchase" id="formComprar" method="POST">
                <input id="inputCarro" name="inputCarro" type="hidden" value="">
                <div class="col-md-12 col-xs-6">
                    Nombre:<input name="nombreCliente" type="text"/>
                </div>
                <div class="col-md-12 col-xs-7">
                    Dirección: <input name="direccionCliente" type="text"/> 
                </div>
                <button type="submit" id="botonComprar" class="pull-right">Comprar</button>
            </form>
        </div>
    </div>
</header>
