package Servlets;

import Clases.BD;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.*;

public class purchase extends HttpServlet {

protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException, JSONException, SQLException {
    response.setContentType("text/html;charset=UTF-8");
    try (PrintWriter out = response.getWriter()) {
        
    String nombreCliente = request.getParameter("nombreCliente");    
    String direccionCliente = request.getParameter("direccionCliente");
    int idVenta = 0;
    int idproducto;
    double precio = 0;
    int cantidad;
    
    // Obtengo el JSON con los productos a comprar y lo transformo a JSONObject 
    String json = request.getParameter("inputCarro");
    System.out.println(json);
    JSONObject obj = new JSONObject(json);

    //Listas para almacenar los identificadores y las cantidades
    List ids = new ArrayList();
    List cantidades = new ArrayList();

    //Relleno las listas 
    JSONArray array = obj.getJSONArray("info");
    for(int i = 0 ; i < array.length() ; i++){
        ids.add(array.getJSONObject(i).getInt("id"));
        cantidades.add(array.getJSONObject(i).getInt("cantidad"));
    }
    
    System.out.println("ids: "+ids);
    System.out.println("cantidades: "+cantidades);
    
    BD conexion = new BD();
    conexion.conectar("root", "usuario", "jdbc:mysql://localhost/Comercio");
    Statement stmt = conexion.getConn().createStatement();
    
    System.out.println("Nombre cliente: "+nombreCliente);
    System.out.println("Direccion cliente: "+direccionCliente);

    String sql;
    
    sql = "INSERT INTO Ventas(nombreCliente,direccionCliente) " +
          "VALUES ('"+nombreCliente+"','"+direccionCliente+"')";
    stmt.executeUpdate(sql);
    
    sql = "SELECT idVenta FROM Ventas ORDER BY idVenta DESC LIMIT 1";
    try (ResultSet rs = stmt.executeQuery(sql)) {
        if(rs.next()){
            idVenta = rs.getInt("idVenta");
        }
        rs.close();
    }
    
    Iterator itId = ids.iterator();
    Iterator itCantidades = cantidades.iterator();
    
    while (itId.hasNext() && itCantidades.hasNext()) {
        idproducto = (int)itId.next();
        cantidad = (int)itCantidades.next();
        
        sql = "SELECT precio FROM Productos WHERE idproducto = "+idproducto;
        try (ResultSet rs = stmt.executeQuery(sql)) {
            if(rs.next()){
                precio = rs.getDouble("precio");
            }
            rs.close();
        }
        
        sql = "INSERT INTO VentasProductos(idVenta,idProducto,cantidad,subtotal)"+
              "VALUES ("+idVenta+","+idproducto+","+cantidad+","+cantidad*precio+")";    
        
        stmt.executeUpdate(sql);
    }
    
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
        } catch (JSONException ex) {
            Logger.getLogger(purchase.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
        Logger.getLogger(purchase.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (JSONException ex) {
            Logger.getLogger(purchase.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
        Logger.getLogger(purchase.class.getName()).log(Level.SEVERE, null, ex);
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
