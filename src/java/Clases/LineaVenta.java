package Clases;

public class LineaVenta {
    private int idProducto;
    private int cantidad;
    private double precio;
    private String descripcion;
    private double subtotal;
    
    public void LineaVenta(){
        
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getPrecio() {
        return precio;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public double getSubtotal() {
        return subtotal;
    }
    
}
