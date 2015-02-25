package Clases;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Producto {
    private int id;
    private String nombre;
    private String descripcion;
    private double precio;
    private int cantidad;
    
    public Producto(){
        
    }

    public Producto( int id,String nombre,String descripcion, double precio ,int cantidad){
        this.id = id;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.cantidad = cantidad;
    }
    
    public int getCantidad(){
        return this.cantidad;
    }
    
    public void setCantidad(int cantidad){
        this.cantidad = cantidad;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String getNombre() {
        return this.nombre;
    }
    
    /*---- DAO productos -----*/
    
    public boolean recuperarDatosPorId(int id) throws SQLException{
      boolean existe = false;  
        
      BD conectar = new BD();
      conectar.conectar("root","usuario","jdbc:mysql://localhost/Comercio");
      
      String sql = "SELECT * FROM Productos WHERE idproducto ="+id;
      Statement stmt = conectar.getConn().createStatement();
      ResultSet rs = stmt.executeQuery(sql);
      
      if(rs.next()){
          this.id = rs.getInt("idproducto");
          this.nombre = rs.getString("nombre");
          this.descripcion = rs.getString("descripcion");
          this.precio = rs.getDouble("precio");
          existe = true;
      }
      
      rs.close();
      conectar.desconectar();
      
      return existe;
    } 
    
}
