<header class="carrito col-md-3 col-sm-3">
    <div class="row">
        <div class="col-md-12 col-sm-12">
            <div class="row">
                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-10">
                    <h2>Carrito</h2>
                </div>
                <div class="hidden-lg hidden-md hidden-sm col-xs-2">
                    <span class="cerrarCarroPeq glyphicon glyphicon-remove pull-right"></span>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="productsCar col-md-12 col-sm-12">

        </div>
    </div>
    <div class="row">
        <div class="col-md-12 col-sm-12">
            <span class="pull-right">Total:<span id="total">0</span></span>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 col-sm-12">
            <button id="actualizar">Actualizar</button>
            <form action="../purchase" method="POST">
                <input id="inputCarro" name="inputCarro" type="hidden" value="{d:fdf,g:ghj}">
                <button type="submit" id="botonComprar" class="pull-right">Comprar</button>
            </form>
        </div>
    </div>
</header>
