/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vegetablesshop.controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import vegetables.orders.Order;
import vegetables.orders.OrderDAO;
import vegetables.orders.OrderDetail;
import vegetables.orders.ShippingInfo;
import vegetablesshop.email.SendHTMLEmail;
import vegetablesshop.products.ProductDAO;
import vegetablesshop.shopping.Cart;
import vegetablesshop.shopping.CartProduct;
import vegetablesshop.users.UserDAO;
import vegetablesshop.users.UserDTO;

/**
 *
 * @author VODUCMINH
 */
@WebServlet(name = "VNPayCheckoutController", urlPatterns = {"/VNPayCheckoutController"})
public class VNPayCheckoutController extends HttpServlet {
    static final Logger LOGGER = Logger.getLogger(LoginController.class.getName());
    private static final String ERROR = "checkout.jsp";
    private static final String SUCCESS = "success.jsp";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
//            String fullName = request.getParameter("fullName");
//            String address = request.getParameter("address");
//            String city = request.getParameter("city");
//            String state = request.getParameter("state");
//            String phone = request.getParameter("phone");
//            String note = request.getParameter("note");
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");  
            LocalDateTime now = LocalDateTime.now();
            String order_time = dtf.format(now);
            String responseCode = request.getParameter("vnp_ResponseCode");
            
            HttpSession session = request.getSession();
            Cart cart = (Cart)session.getAttribute("CART");
            ShippingInfo shipInfo = (ShippingInfo)session.getAttribute("SHIPPING_INFO");
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            String loginCheck = (String)session.getAttribute("LOGIN_CHECK");
            
            UserDAO userDAO = new UserDAO();
            
            if ("00".equals(responseCode)) {
                if("GG".equals(loginCheck)) {
                    UserDTO user = new UserDTO(loginUser.getUserID(), loginUser.getUserName(), "", "", "", order_time, loginUser.getEmail(), "1", 3);
                    if (userDAO.getUser(loginUser.getUserID()) != null) {
                        userDAO.insertUser(user);
                        LOGGER.info("Insert user has id: " + loginUser.getUserID() + "successfully!");
                    }
                }
                
                UUID uuid = UUID.randomUUID();
                String orderID = uuid.toString();                    
                String userID = loginUser.getUserID();
                double totalPrice = cart.getTotalMoney();
                String createDate = order_time; 

                Order order = new Order(orderID, userID, totalPrice, createDate);
                OrderDAO dao = new OrderDAO();
                ProductDAO productDao = new ProductDAO();
                boolean check = dao.insertOrder(order);

                if (check == true) {    
                    LOGGER.info("Insert order has order id: " + orderID + "successfully!");
                    for (CartProduct product : cart.getCart().values()) {
                        productDao.minusProduct(product.getProductID(), product.getQuantity());
                        LOGGER.info("Minus product has product id: " + product.getProductID() + " and minus: " + product.getQuantity() + " successfully");

                        UUID detailUUID = UUID.randomUUID();
                        String detailID = detailUUID.toString();
                        dao.insertOrderDetail(new OrderDetail(detailID, orderID, product.getProductID(), product.getProductPrice(), product.getQuantity()));
                        LOGGER.info("Insert order detail has id: " + orderID + " successfully");
                    }
//
//success.jsp
                    ShippingInfo ship = new ShippingInfo(shipInfo.getFullName(), shipInfo.getAddress(), shipInfo.getCity(), shipInfo.getState(), shipInfo.getPhone(), shipInfo.getNote(), orderID, shipInfo.getStatusID());
                    boolean checkInsertShip = dao.insertShippingInfo(ship);
                    LOGGER.info("Insert shipping info has id: " + orderID + " successfully");

                    if (checkInsertShip) {
                        SendHTMLEmail send = new SendHTMLEmail();
                        send.sendEmail(orderID, loginUser.getEmail());
                        session.removeAttribute("CART");
                        url = SUCCESS;
                    }
                }
            }
            session.removeAttribute("SHIPPING_INFO");
        } 
        catch (Exception e) {
            LOGGER.error("Error at VNPayCheckoutController: " + e.toString());
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
