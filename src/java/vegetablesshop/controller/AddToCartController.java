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
import vegetablesshop.products.ProductDAO;
import vegetablesshop.products.ProductDTO;
import vegetablesshop.shopping.Cart;
import vegetablesshop.shopping.CartProduct;

/**
 *
 * @author VODUCMINH
 */
public class AddToCartController extends HttpServlet {
    private static final String ERROR = "shop.jsp";
    private static final String SUCCESS = "shop.jsp";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        
        try {
            String productID = request.getParameter("productID");
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            String pageValue = request.getParameter("pageValue");
            
            ProductDAO dao = new ProductDAO();
            ProductDTO product = dao.getProductForCart(productID);
            
            String productName = product.getProductName();
            double productPrice = product.getProductPrice();
            String productImage = product.getProductImage();
            
            
            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("CART");
            
            
            
            if (cart == null) {
                cart = new Cart();
            }
            
            if (cart.getCart() != null) {
                    CartProduct item = new CartProduct();
                    
                    for (CartProduct checkItem : cart.getCart().values()) {
                        if (checkItem.getProductID().equals(productID)) {
                            item = checkItem;
                        }
                    }
                
                    if (item.getProductID().equals(productID)) {
                        if ((quantity + item.getQuantity()) <= product.getQuantity()) {
                            item.setQuantity(quantity + item.getQuantity());
                        }
                        else {
                            item.setQuantity(product.getQuantity());
                        }
                    }
//                    check lai database
                    else {
                        if (quantity <= product.getQuantity()) {
                            CartProduct cartProduct = new CartProduct(productID, productName, productPrice, productImage, quantity);
                            cart.addToCart(cartProduct);
                            session.setAttribute("CART", cart);
                            url = SUCCESS;
                            if ("searchPage".equals(pageValue)) {
                                StringBuilder requestURL = new StringBuilder(request.getRequestURL().toString());
                                url = requestURL.toString();
                            }
                        }
                }
                if (cart.getCart().size() == 0) {
                    if (quantity <= product.getQuantity()) {
                            CartProduct cartProduct = new CartProduct(productID, productName, productPrice, productImage, quantity);
                            cart.addToCart(cartProduct);
                            session.setAttribute("CART", cart);
                            url = SUCCESS;
                            if ("searchPage".equals(pageValue)) {
                                StringBuilder requestURL = new StringBuilder(request.getRequestURL().toString());
                                url = requestURL.toString();
                            }
                        }
                }
            }
            else {
                if (quantity <= product.getQuantity()) {
                    CartProduct cartProduct = new CartProduct(productID, productName, productPrice, productImage, quantity);
                    cart.addToCart(cartProduct);
                    session.setAttribute("CART", cart);
                    url = SUCCESS;
                    if ("searchPage".equals(pageValue)) {
                        StringBuilder requestURL = new StringBuilder(request.getRequestURL().toString());
                        url = requestURL.toString();
                    }
                }
                else {
                    request.setAttribute("ERROR_CART", "Quantity of this product is not enough!");
                }
            }
            
        } 
        catch (Exception e) {
            log("Error at AddToCartController: " + e.toString());
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
