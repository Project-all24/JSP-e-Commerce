package Clases;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Almacen {
    private List <Producto> productos;
    
    public Almacen() {
        
    }
    
    public List<Producto> getProductos(){
        return productos;
    }
    
    public boolean recuperarProductos() throws SQLException{
      List <Producto> listado = new ArrayList();  
        
      BD conectar = new BD();
      conectar.conectar("root","usuario","jdbc:mysql://localhost/Comercio");
      
      String sql = "SELECT * FROM Productos";
      Statement stmt = conectar.getConn().createStatement();
      ResultSet rs = stmt.executeQuery(sql);
      
      while(rs.next()){
          Producto otro = new Producto( rs.getInt("idproducto"),rs.getString("nombre"),rs.getString("descripcion"),rs.getDouble("precio"),rs.getInt("cantidad") );
          listado.add(otro);
      }
      
      rs.close();
      conectar.desconectar();
        
      this.productos = listado;
      
      boolean hayProd = true;
      
      if( listado.isEmpty() ){
          hayProd = false;
      }
      System.out.println(hayProd);
      return hayProd;
    }
    
    public boolean recuperarProductos(String nombreFiltro) throws SQLException{
      List <Producto> listado = new ArrayList();  
        
      BD conectar = new BD();
      conectar.conectar("root","usuario","jdbc:mysql://localhost/Comercio");
      
      String sql = "SELECT * FROM Productos WHERE nombre ='"+nombreFiltro+"'";
      Statement stmt = conectar.getConn().createStatement();
      ResultSet rs = stmt.executeQuery(sql);
      
      while(rs.next()){
          Producto otro = new Producto( rs.getInt("idproducto"),rs.getString("nombre"),rs.getString("descripcion"),rs.getDouble("precio"),rs.getInt("cantidad") );
          listado.add(otro);
      }
      
      rs.close();
      conectar.desconectar();
        
      this.productos = listado;
      
      boolean hayProd = true;
      
      if( listado.isEmpty() ){
          hayProd = false;
      }
      
      return hayProd;
    }
    
}
