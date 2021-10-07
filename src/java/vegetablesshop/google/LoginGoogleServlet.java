/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vegetablesshop.google;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import vegetablesshop.controller.LoginController;
import vegetablesshop.users.UserDTO;

/**
 *
 * @author VODUCMINH
 */
@WebServlet(name = "LoginGoogleServlet", urlPatterns = {"/login-google"})
public class LoginGoogleServlet extends HttpServlet {
    static final Logger LOGGER = Logger.getLogger(LoginController.class.getName());
  private static final long serialVersionUID = 1L;
  public LoginGoogleServlet() {
    super();
  }
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String code = request.getParameter("code");
    if (code == null || code.isEmpty()) {
      RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
      dis.forward(request, response);
    } else {
      String accessToken = GoogleUtils.getToken(code);
      GooglePojo googlePojo = GoogleUtils.getUserInfo(accessToken);
      request.setAttribute("id", googlePojo.getId());
      request.setAttribute("name", googlePojo.getName());
      request.setAttribute("email", googlePojo.getEmail());
      
      UserDTO loginUser = new UserDTO(googlePojo.getEmail(), googlePojo.getEmail(), "", "", "", "", googlePojo.getEmail(), "", 0);
      
      HttpSession session = request.getSession();
       session.setAttribute("LOGIN_USER", loginUser);
       session.setAttribute("LOGIN_CHECK", "GG");
      response.sendRedirect("index.jsp");
      LOGGER.info("Login by Google with email: " + googlePojo.getEmail() + " successfully!");
    }
  }
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    doGet(request, response);
  }
}