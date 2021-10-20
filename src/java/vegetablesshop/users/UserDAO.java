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
import java.util.ArrayList;
import java.util.List;
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
                String sql = "SELECT userName, roleID, email "
                            + " FROM tblUsers "
                            + " WHERE userID=? AND password=? AND userStatus=1";
                stm = conn.prepareStatement(sql);
                stm.setString(1, userID);
                stm.setString(2, password);
                rs = stm.executeQuery();
                
                if (rs.next()) {
                    String userName = rs.getString("userName");
                    int roleID = Integer.parseInt(rs.getString("roleID"));
                    String email = rs.getString("email");
                    
                    user = new UserDTO(userID, userName, "", "", password, "", email, "", roleID);
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
    
    public boolean insertUser(UserDTO user) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        
        try {
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "INSERT INTO tblUsers(userID, userName, userAddress, userPhone, password, createDate, email, userStatus, roleID) "
                            + " VALUES(?,?,?,?,?,?,?,?,?)";
                            
                stm = conn.prepareStatement(sql);
                stm.setString(1, user.getUserID());
                stm.setString(2, user.getUserName());
                stm.setString(3, "GG");
                stm.setString(4, "GG");
                stm.setString(5, "GG");
                stm.setString(6, user.getCreateDate());
                stm.setString(7, user.getEmail());
                stm.setInt(8, 1);
                stm.setInt(9, 3);
                
                check = stm.executeUpdate() > 0;
            }
        } 
        catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            if (stm != null) {
                stm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }
    
    public boolean insertUserSignUp(UserDTO user) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        
        try {
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "INSERT INTO tblUsers(userID, userName, userAddress, userPhone, password, createDate, email, userStatus, roleID) "
                            + " VALUES(?,?,?,?,?,?,?,?,?)";
                            
                stm = conn.prepareStatement(sql);
                stm.setString(1, user.getUserID());
                stm.setString(2, user.getUserName());
                stm.setString(3, "*");
                stm.setString(4, "*");
                stm.setString(5, user.getPassword());
                stm.setString(6, user.getCreateDate());
                stm.setString(7, user.getEmail());
                stm.setInt(8, 1);
                stm.setInt(9, 2);
                
                check = stm.executeUpdate() > 0;
            }
        } 
        catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            if (stm != null) {
                stm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }
    
    public boolean editUser(UserDTO user) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "UPDATE tblUsers "
                            + " SET roleID=?, userName=?, userPhone=?, userAddress=?, email=?, userStatus=? "
                            + " WHERE userID=?";
                stm = conn.prepareStatement(sql);
                
                stm.setInt(1, user.getRoleID());
                stm.setString(2, user.getUserName());
                stm.setString(3, user.getUserPhone());
                stm.setString(4, user.getUserAddress());
                stm.setString(5, user.getEmail());
                stm.setInt(6, Integer.parseInt(user.getUserStatus()));
                stm.setString(7, user.getUserID());
                
                check = stm.executeUpdate() > 0;
                
            }
        } 
        catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            if (stm != null) {
                stm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        
        
        return check;
    }
    
    public boolean deleteUser(String userID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        
        try {
            conn = DBUtils.getConnection();
             
            if (conn != null) {
                String sql = "UPDATE tblUsers "
                            + " SET userStatus=? "
                            + " WHERE userID=?";
                stm = conn.prepareStatement(sql);
                stm.setInt(1, 0);
                stm.setString(2, userID);
                
                check = stm.executeUpdate() > 0;
            }
        } 
        catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            if (stm != null) {
                stm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        
        return check;
    }
    
    public List<UserDTO> getActiveUser() throws SQLException {
        List<UserDTO> listUser = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try {
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "SELECT userID, userName, userAddress, userPhone, roleID, userStatus, email, createDate"
                            + " FROM tblUsers "
                            + " WHERE roleID <> 3";
                            
                stm = conn.prepareStatement(sql);
               
                rs = stm.executeQuery();
                
                while (rs.next()) {
                    String userID = rs.getString("userID");
                    String userName = rs.getString("userName");
                    String userAddress = rs.getString("userAddress");
                    String userPhone = rs.getString("userPhone");
                    int roleID = Integer.parseInt(rs.getString("roleID"));
                    String userStatus = parseUserStatus(Integer.parseInt(rs.getString("userStatus")));
                    String email = rs.getString("email");
                    String createDate = rs.getString("createDate");
                    
                    listUser.add(new UserDTO(userID, userName, userAddress, userPhone, "*********", createDate, email, userStatus, roleID));
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
        
        return listUser;
    }
    
    public String parseUserStatus(int userStatus) {
        String result = "";
        
        if (userStatus == 1) {
            result = "Active";
        }
        else if (userStatus == 0) {
            result = "Deleted";
        }
        
        return result;
    }
    
//    public static void main(String[] args) throws SQLException {
//        UserDAO dao = new UserDAO();
//        System.out.println(dao.getUser("minhvd").toString());
//    }
    
}
