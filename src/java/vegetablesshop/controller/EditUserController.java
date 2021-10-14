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
import org.apache.log4j.Logger;
import vegetablesshop.users.UserDAO;
import vegetablesshop.users.UserDTO;

/**
 *
 * @author VODUCMINH
 */
public class EditUserController extends HttpServlet {
    static final Logger LOGGER = Logger.getLogger(LoginController.class.getName());
    private static final String ERROR = "admin.jsp";
    private static final String SUCCESS = "admin.jsp";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        
        try {
            String userID = request.getParameter("userID");
            String userName = request.getParameter("userName");
            String userAddress = request.getParameter("userAddress");
            String userPhone = request.getParameter("userPhone");
            String email = request.getParameter("email");
            int roleID = Integer.parseInt(request.getParameter("roleID"));
            String userStatus = request.getParameter("userStatus");
            
            UserDAO dao = new UserDAO();
            
            boolean check = dao.editUser(new UserDTO(userID, userName, userAddress, userPhone, "*", "*", email, userStatus, roleID));
            
            if (check) {
                url = SUCCESS;
            }
        } 
        catch (Exception e) {
            LOGGER.error("Error at EditUserController: " + e.toString());
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
