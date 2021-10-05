/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vegetablesshop.users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import vegetablesshop.utils.DBUtils;

/**
 *
 * @author VODUCMINH
 */
public class UserDAO {
    public UserDTO checkLogin(String userID, String password) throws SQLException {
        UserDTO user = null;
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try {
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "SELECT userName, roleID "
                            + " FROM tblUsers "
                            + " WHERE userID=? AND password=?";
                stm = conn.prepareStatement(sql);
                stm.setString(1, userID);
                stm.setString(2, password);
                rs = stm.executeQuery();
                
                if (rs.next()) {
                    String userName = rs.getString("userName");
                    int roleID = Integer.parseInt(rs.getString("roleID"));
                    
                    user = new UserDTO(userID, userName, "", "", password, "", "", "", roleID);
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
        
        return user;
    } 
    
    public UserDTO getUser(String userID) throws SQLException {
        UserDTO user = null;
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try {
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "SELECT userName, roleID "
                            + " FROM tblUsers "
                            + " WHERE userID=? ";
                stm = conn.prepareStatement(sql);
                stm.setString(1, userID);
                rs = stm.executeQuery();
                
                if (rs.next()) {
                    String userName = rs.getString("userName");
                    int roleID = Integer.parseInt(rs.getString("roleID"));
                    
                    user = new UserDTO(userID, userName, "", "", "", "", "", "", roleID);
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
        
        return user;
    } 
    
    public static void main(String[] args) throws SQLException {
        UserDAO dao = new UserDAO();
        System.out.println(dao.getUser("minhvd").toString());
    }
    
}
