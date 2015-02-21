package Clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class BD {
   private static Connection conn = null;
   
   public BD(){
       
   }
   
   public Connection getConn(){
       return conn;
   }
   
   public void conectar(String user,String pass,String dburl) {
       try {
           Class.forName("com.mysql.jdbc.Driver");
           String url = dburl;
           conn = DriverManager.getConnection(dburl, user, pass);
       } catch (ClassNotFoundException | SQLException ex) {
           Logger.getLogger(BD.class.getName()).log(Level.SEVERE, null, ex);
       }
       
   }
   
   public void desconectar(){
       try {
           conn.close();
       } catch (SQLException ex) {
           Logger.getLogger(BD.class.getName()).log(Level.SEVERE, null, ex);
       }
   }
   
}
