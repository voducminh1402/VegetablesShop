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
import vegetablesshop.users.UserDAO;
import vegetablesshop.users.UserDTO;

/**
 *
 * @author VODUCMINH
 */
public class LoginController extends HttpServlet {
    static final Logger LOGGER = Logger.getLogger(LoginController.class.getName());
    private static final String ERROR = "login.jsp";
    private static final String USER = "index.jsp";
    private static final String ADMIN = "admin.jsp";
    private static final String CHECKOUT = "checkout.jsp";
    private static final int AD = 1;
    private static final int US = 2;
      
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            String userID = request.getParameter("userID");
            String password = request.getParameter("password");
            String pageValue = request.getParameter("pageValue");
            
            UserDAO dao = new UserDAO();
            UserDTO loginUser = dao.checkLogin(userID, password);
            
            HttpSession session = request.getSession();
            session.setAttribute("LOGIN_USER", loginUser);
            
            if (loginUser != null) {
                
                if (AD == loginUser.getRoleID()) {
                    url = ADMIN;
                    LOGGER.info("Login admin success!");
                }
                else if (US == loginUser.getRoleID() && !"checkout".equals(pageValue)) {
                    url = USER;
                    LOGGER.info("Login user success!");
                }
                else if (US == loginUser.getRoleID() && "checkout".equals(pageValue)) {
                    url = CHECKOUT;
                    LOGGER.info("Login to checkout success!");
                }
                else {
                    session.setAttribute("MESSAGE_ERROR", "This role is not supported!");
                    LOGGER.warn("Login fail! This role not support!");
                }
            }
            else {
                session.setAttribute("MESSAGE_ERROR", "Incorrect user ID or password!");
                LOGGER.warn("Login fail! Incorrect user ID or password!");
            }
        } 
        catch (Exception e) {
            LOGGER.error("Error at LoginContoller: " + e.toString());
        }
        finally {
            response.sendRedirect(url);
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
