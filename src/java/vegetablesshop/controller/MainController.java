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

/**
 *
 * @author VODUCMINH
 */
public class MainController extends HttpServlet {
    private static final String ERROR = "error.jsp";
    private static final String LOGIN = "LoginController";
    private static final String LOGOUT = "LogoutController";
    private static final String GET_ACTIVE_PRODUCT = "GetActiveProductController";
    private static final String GET_DETAIL_PRODUCT = "GetDetailProductController";
    private static final String ADD_TO_CART = "AddToCartController";
    private static final String DELETE_PRODUCT_CART = "DeleteProductCartController";
    private static final String UPDATE_CART = "UpdateCartController";
    private static final String SEARCH_PRODUCT = "SearchProductController";
    private static final String CHECKOUT_LOGIN = "CheckoutLoginController";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        
        try {
            String action = request.getParameter("action");
            if ("Login".equals(action)) {
                url = LOGIN;
            }
            else if ("Logout".equals(action)) {
                url = LOGOUT;
            }
            else if ("Logout".equals(action)) {
                url = LOGOUT;
            }
            else if ("GetActiveProduct".equals(action)) {
                url = GET_ACTIVE_PRODUCT;
            }
            else if ("GetDetailProduct".equals(action)) {
                url = GET_DETAIL_PRODUCT;
            }
            else if ("AddToCart".equals(action)) {
                url = ADD_TO_CART;
            }
            else if ("DeleteProductCart".equals(action)) {
                url = DELETE_PRODUCT_CART;
            }
            else if ("SearchProduct".equals(action)) {
                url = SEARCH_PRODUCT;
            }
            else if ("UpdateCart".equals(action)) {
                url = UPDATE_CART;
            }
            else if ("CheckoutLogin".equals(action)) {
                url = CHECKOUT_LOGIN;
            }
            else {
                HttpSession session = request.getSession();
                session.setAttribute("CONTROLLER_ERROR_MESSAGE", "This function is not supported!");
            }
        } 
        catch (Exception e) {
            log("Error at MainController: " + e.toString());
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
