/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vegetablesshop.controller;

import java.io.IOException;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import vegetablesshop.products.ProductDAO;
import vegetablesshop.products.ProductDTO;

/**
 *
 * @author VODUCMINH
 */
public class AddProductController extends HttpServlet {
    static final Logger LOGGER = Logger.getLogger(LoginController.class.getName());
    private static final String ERROR = "admin-product.jsp";
    private static final String SUCCESS = "admin-product.jsp";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            UUID uuid = UUID.randomUUID();
            String productID = uuid.toString();
            String productName = request.getParameter("productName");
            String productImage = request.getParameter("productImage");
            String description = request.getParameter("description");
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            double productPrice = Double.parseDouble(request.getParameter("productPrice"));
            String categoryID = request.getParameter("categoryID");
            String availableID = request.getParameter("availableID");
            String createDate = request.getParameter("createDate");
            
            ProductDTO product = new ProductDTO(productID, productName, productImage, productPrice, quantity, description, availableID, categoryID, createDate);
            ProductDAO dao = new ProductDAO();
            
            boolean check = dao.insertProduct(product);
            
            if (check) {
                url = SUCCESS;
            }
        } 
        catch (Exception e) {
            LOGGER.error("Error at AddProductController: " + e.toString());
        }
        finally {
            request.getRequestDispatcher(url).forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
