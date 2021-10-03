/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vegetablesshop.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import vegetablesshop.products.ProductDAO;
import vegetablesshop.products.ProductDTO;
import vegetablesshop.shopping.Cart;
import vegetablesshop.shopping.CartProduct;

/**
 *
 * @author VODUCMINH
 */
public class UpdateCartController extends HttpServlet {
    private static final String ERROR = "cart.jsp";
    private static final String SUCCESS = "cart.jsp";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            String productID = request.getParameter("productID");
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            
            ProductDAO dao = new ProductDAO();
            ProductDTO productDTO = dao.getProductForCart(productID);
            
            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("CART");
            CartProduct product = new CartProduct();
            
            for (CartProduct item : cart.getCart().values()) {
                if (item.getProductID().equals(productID)) {
                    String productName = item.getProductName();
                    String productImage = item.getProductImage();
                    double price = item.getProductPrice();
                    
                    if (quantity <= productDTO.getQuantity()) {
                        product = new CartProduct(productID, productName, price, productImage, quantity);
                    }
                    else {
                        product = new CartProduct(productID, productName, price, productImage, productDTO.getQuantity());
                        request.setAttribute("ERROR_CART", "Quantity of this product is not enough!");
                    }
                    break;
                }
            }
            
            if (cart != null) {
                cart.updateCart(productID, product);
                session.setAttribute("CART", cart);
                url = SUCCESS;
            }
        } 
        catch (Exception e) {
            log("Error at DeleteProductCartController: " + e.toString());
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
