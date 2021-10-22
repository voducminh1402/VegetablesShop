/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vegetablesshop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import vegetablesshop.products.ProductDAO;
import vegetablesshop.shopping.Cart;
import vegetablesshop.shopping.CartProduct;

/**
 *
 * @author VODUCMINH
 */
public class CheckoutConfirmController extends HttpServlet {
    static final Logger LOGGER = Logger.getLogger(LoginController.class.getName());
    private static final String ERROR = "cart.jsp";
    private static final String SUCCESS = "checkout.jsp";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        
        try {
            HttpSession session = request.getSession();
            Cart cart = (Cart)session.getAttribute("CART");
            ProductDAO productDAO = new ProductDAO();
            
            for (CartProduct product : cart.getCart().values()) {
                    int productData = productDAO.getProductQuantity(product.getProductID());
                    if (product.getQuantity() <= productData) {
                        url = SUCCESS;
                    }
                    else {
                        product.setQuantity(productData);
                    }
                }
            
            if (url.equals(ERROR)) {
                session.setAttribute("ERROR_CART", "Max quantity of products are updated!!!");
            }
        } 
        catch (Exception e) {
            LOGGER.error("Error at CheckoutConfirmController: " + e.toString());
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
