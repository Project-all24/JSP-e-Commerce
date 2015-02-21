package Clases;

import java.util.List;

public class Carrito {
    private String nombreCliente;
    private String direccionCliente;
    private List <LineaVenta> lineas;
    private LineaVenta nuevaLinea;
    private double total;
    
    public void Carrito(){
    
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public String getDireccionCliente() {
        return direccionCliente;
    }

    public void setDireccionCliente(String direccionCliente) {
        this.direccionCliente = direccionCliente;
    }

    public List<LineaVenta> getLineas() {
        return lineas;
    }

    public void setNuevaLinea(LineaVenta nuevaLinea) {
        this.nuevaLinea = nuevaLinea;
    }

    public double getTotal() {
        return total;
    }
    
}
