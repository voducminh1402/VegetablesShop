/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vegetablesshop.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import vegetables.orders.Order;
import vegetables.orders.OrderDAO;
import vegetables.orders.OrderDetail;
import vegetables.orders.ShippingInfo;
import vegetablesshop.products.ProductDAO;
import vegetablesshop.shopping.Cart;
import vegetablesshop.shopping.CartProduct;
import vegetablesshop.users.UserDAO;
import vegetablesshop.users.UserDTO;

/**
 *
 * @author VODUCMINH
 */
public class GetInfoCheckoutController extends HttpServlet {
    private static final String ERROR = "checkout.jsp";
    private static final String SUCCESS = "success.jsp";
    private static final String VN_PAY = "vnpay_index.jsp";
//    private static final String VN_PAY_CHECKOUT = "VNPayCheckoutController";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        
        try {
            String fullName = request.getParameter("fullName");
            String address = request.getParameter("address");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String phone = request.getParameter("phone");
            String note = request.getParameter("note");
            String order_time = request.getParameter("order_time");
            String payment_option = request.getParameter("payment_option");
//            String newOrderID = null;
            
            HttpSession session = request.getSession();
            Cart cart = (Cart)session.getAttribute("CART");
            String loginCheck = (String)session.getAttribute("LOGIN_CHECK");
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            
            UserDAO userDAO = new UserDAO();
            
            String orderID = null;
            if ("check".equals(payment_option)) {
                boolean checkInsertUser = false;
                if("GG".equals(loginCheck)) {
                    UserDTO user = new UserDTO(loginUser.getUserID(), loginUser.getUserName(), "", "", "", order_time, loginUser.getEmail(), "1", 3);
                    checkInsertUser = userDAO.insertUser(user);
                }
                
                if (checkInsertUser) {
                    UUID uuid = UUID.randomUUID();
                    orderID = uuid.toString();
                    String userID = loginUser.getUserID();
                    double totalPrice = cart.getTotalMoney();
                    String createDate = order_time;

                    Order order = new Order(orderID, userID, totalPrice, createDate);
                    OrderDAO dao = new OrderDAO();
                    ProductDAO productDao = new ProductDAO();
                    boolean check = dao.insertOrder(order);

                    if (check == true) {

                        for (CartProduct product : cart.getCart().values()) {
                            productDao.minusProduct(product.getProductID(), product.getQuantity());

                            UUID detailUUID = UUID.randomUUID();
                            String detailID = detailUUID.toString();
                            dao.insertOrderDetail(new OrderDetail(detailID, orderID, product.getProductID(), product.getProductPrice(), product.getQuantity()));
                        }

                        dao.insertShippingInfo(new ShippingInfo(fullName, address, city, state, phone, note, orderID, 1));

                        session.removeAttribute("CART");
                        url = SUCCESS;
                    }
                }
            }
            else if ("vnpay".equals(payment_option)) {
//                UUID uuid = UUID.randomUUID();
//                newOrderID = uuid.toString();
                
                ShippingInfo shippingInfo = new ShippingInfo(fullName, address, city, state, phone, note, "", 1);
                
                
                session.setAttribute("SHIPPING_INFO", shippingInfo);
//                request.setAttribute("ORDER_ID", newOrderID);
                url = VN_PAY;
            }
            
        } 
        catch (Exception e) {
            log("Error at GetInfoCheckoutController: " + e.toString());
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
