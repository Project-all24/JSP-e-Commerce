package Servlets;

import Clases.BD;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BDcrear extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            BD conexion = new BD();
            conexion.conectar("root", "usuario", "jdbc:mysql://localhost/");
            Statement stmt = conexion.getConn().createStatement();
      
            String sql = "CREATE DATABASE Comercio "
                    + "DEFAULT CHARACTER SET latin1 "
                    + "DEFAULT COLLATE latin1_spanish_ci";
            stmt.executeUpdate(sql);
            out.println("Database Chat created successfully...");

            conexion.desconectar();
            
            conexion.conectar("root", "usuario", "jdbc:mysql://localhost/Comercio");
            stmt = conexion.getConn().createStatement();
            
            out.println("Using database Comercio...");
            
            sql = "CREATE TABLE Productos " +
                   "( idproducto INT AUTO_INCREMENT PRIMARY KEY," + 
                   " nombre VARCHAR(200)," + 
                   " descripcion VARCHAR(400),"+
                   " precio DECIMAL(6,2),"+ 
                   " cantidad INT )";

            stmt.executeUpdate(sql);
            out.println("Created table Productos...");
            
            sql = "INSERT INTO Productos(nombre,descripcion,precio,cantidad) " +
                   "VALUES ('Mesa','Marrón con cuatro patas', 20, 5)";
            stmt.executeUpdate(sql);
            
            sql = "INSERT INTO Productos(nombre,descripcion,precio,cantidad) " +
                   "VALUES ('Silla','Azul giratoria con reposabrazos', 15, 4)";
            stmt.executeUpdate(sql);
            
            sql = "INSERT INTO Productos(nombre,descripcion,precio, cantidad) " +
                   "VALUES ('Mueble','Mueble con compartimento secreto para esconder el alcohol de la vista de tus hijos', 50, 3)";
            stmt.executeUpdate(sql);
            
            out.println("Insert products...");
            
            sql = "CREATE TABLE Ventas " +
                   "( idVenta INT AUTO_INCREMENT PRIMARY KEY," + 
                   " nick VARCHAR(50)," + 
                   " nombreCliente VARCHAR(40),"+
                   " direccionCliente VARCHAR(40) )";

            stmt.executeUpdate(sql);
            out.println("Created table Ventas...");
            
            sql = "CREATE TABLE VentasProductos " +
                   "( idVenta INT ," + 
                   " lineaVenta INT," + 
                   " idProducto INT,"+
                   " cantidad INT,"+
                   " subtotal DECIMAL(6,2),"+ 
                   " FOREIGN KEY (idVenta) REFERENCES Ventas(idVenta),"+
                   " FOREIGN KEY (idProducto) REFERENCES Productos(idProducto))";

            stmt.executeUpdate(sql);
            out.println("Created table VentasProductos...");
            
            conexion.desconectar();
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(BDcrear.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(BDcrear.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
