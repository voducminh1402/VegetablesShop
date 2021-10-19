/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vegetables.orders;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import vegetablesshop.utils.DBUtils;

/**
 *
 * @author VODUCMINH
 */
public class OrderDAO {
    public boolean insertOrder(Order order) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        
        try {
            String orderID = order.getOrderID();
            String userID = order.getUserID();
            double totalPrice = order.getTotalPrice();
            String createDate = order.getCreateDate();
            
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "INSERT INTO tblOrders(orderID, userID, totalPrice, createDate) "
                            + " VALUES(?,?,?,?)";
                stm = conn.prepareStatement(sql);
                stm.setString(1, orderID);
                stm.setString(2, userID);
                stm.setDouble(3, totalPrice);
                stm.setString(4, createDate);
                
                check = stm.executeUpdate() > 0;
            }
        } 
        catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            if (stm != null) {
                stm.close();;
            }
            if (conn != null) {
                conn.close();;
            }
        }
        
        return check;
    }
    
    public boolean insertShippingInfo(ShippingInfo info) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        
        try {
            String fullName = info.getFullName();
            String address = info.getAddress();
            String city = info.getCity();
            String state = info.getState();
            String phone = info.getPhone();
            String note = info.getNote();
            String orderID = info.getOrderID();
            int statusID = info.getStatusID();
            
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "INSERT INTO tblShippingInfo(fullName, address, city, state, phone, note, orderID, statusID) "
                            + " VALUES(?,?,?,?,?,?,?,?)";
                stm = conn.prepareStatement(sql);
                stm.setString(1, fullName);
                stm.setString(2, address);
                stm.setString(3, city);
                stm.setString(4, state);
                stm.setString(5, phone);
                stm.setString(6, note);
                stm.setString(7, orderID);
                stm.setInt(8, statusID);
                
                check = stm.executeUpdate() > 0;
            }
        } 
        catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            if (stm != null) {
                stm.close();;
            }
            if (conn != null) {
                conn.close();;
            }
        }
        
        return check;
    }
    
    public boolean insertOrderDetail(OrderDetail orderDetail) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        
        try {
            String detailID = orderDetail.getDetailID();
            String orderID = orderDetail.getOrderID();
            String productID = orderDetail.getProductID();
            double detailPrice = orderDetail.getDetailPrice();
            int quantity = orderDetail.getQuantity();
            
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "INSERT INTO tblOrderDetails(detailID, orderID, productID, detailPrice, quantity) "
                            + " VALUES(?,?,?,?,?)";
                stm = conn.prepareStatement(sql);
                stm.setString(1, detailID);
                stm.setString(2, orderID);
                stm.setString(3, productID);
                stm.setDouble(4, detailPrice);
                stm.setInt(5, quantity);
                
                check = stm.executeUpdate() > 0;
            }
        } 
        catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            if (stm != null) {
                stm.close();;
            }
            if (conn != null) {
                conn.close();;
            }
        }
        
        return check;
    }
    
    public int getOrderDetail(String orderID) throws SQLException {
        int quantityOrder = 0;
        
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try {
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "SELECT ord.productID "
                            + " FROM tblOrderDetails ord, tblProducts prd "
                            + " WHERE ord.orderID=?  AND ord.productID = prd.productID";
                stm = conn.prepareStatement(sql);
                stm.setString(1, orderID);
                
                rs = stm.executeQuery();
                
                while (rs.next()) {
                    quantityOrder = (rs.getRow());
                }
            }
        } 
        catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            if (rs != null) {
                rs.close();;
            }
            if (stm != null) {
                stm.close();;
            }
            if (conn != null) {
                conn.close();;
            }
        }
        
        
        return quantityOrder;
    }
    
    public double getOrderInfo(String orderID) throws SQLException {
        double price = 0;
        
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try {
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "SELECT totalPrice "
                            + " FROM tblOrders "
                            + " WHERE orderID=? ";
                stm = conn.prepareStatement(sql);
                stm.setString(1, orderID);
                
                rs = stm.executeQuery();
                
                if (rs.next()) {
                    price = Double.parseDouble(rs.getString("totalPrice"));
                }
            }
        } 
        catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            if (rs != null) {
                rs.close();;
            }
            if (stm != null) {
                stm.close();;
            }
            if (conn != null) {
                conn.close();;
            }
        }
        
        return price;
    }
    
    public String getShipInfo(String orderID) throws SQLException {
        String fullInfo = "";
        
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try {
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "SELECT fullName, address, city, state, phone "
                            + " FROM tblShippingInfo "
                            + " WHERE orderID=? ";
                stm = conn.prepareStatement(sql);
                stm.setString(1, orderID);
                
                rs = stm.executeQuery();
                
                if (rs.next()) {
                    String fullName = rs.getString("fullName");
                    String address = rs.getString("address");
                    String city = rs.getString("city");
                    String state = rs.getString("state");
                    String phone = rs.getString("phone");
                    
                    fullInfo = fullName + ", " + phone + ", " + address + ", " + city + ", " + state + ".";
                }
            }
        } 
        catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        
        return fullInfo;
    }
    
    public static void main(String[] args) throws SQLException {
        OrderDAO dao = new OrderDAO();
        System.out.println(dao.getShipInfo("22d769f4-289c-4540-aa5d-61464b63c9a4"));
    }
}
