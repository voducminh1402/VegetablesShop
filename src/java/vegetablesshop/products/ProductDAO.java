/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vegetablesshop.products;

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
public class ProductDAO {
    public List<ProductDTO> getListActiveProduct() throws SQLException {
        List<ProductDTO> listProduct = new ArrayList<>();
        ProductDAO dao = new ProductDAO();
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try {
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "SELECT productID, productName, productImage, productPrice, quantity, description, availableID, categoryID "
                            + " FROM tblProducts "
                            + " WHERE productStatus = 1";
                stm = conn.prepareStatement(sql);
                rs = stm.executeQuery();
                
                while (rs.next()) {
                    String productID = rs.getString("productID");
                    String productName = rs.getString("productName");
                    String productImage = rs.getString("productImage");
                    double productPrice = Double.parseDouble(rs.getString("productPrice"));
                    int quantity = Integer.parseInt(rs.getString("quantity"));
                    String description = rs.getString("description");
                    String availableName = dao.convertAvailableName(Integer.parseInt(rs.getString("availableID")));
                    String categoryName = dao.convertCategoryName(Integer.parseInt(rs.getString("categoryID")));
                    
                    listProduct.add(new ProductDTO(productID, productName, productImage, productPrice, quantity, description, availableName, categoryName, "", 1));
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
        
        return listProduct;
    }
    
    public ProductDTO getProduct(String productID) throws SQLException {
        ProductDTO product = new ProductDTO();
        ProductDAO dao = new ProductDAO();
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try {
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "SELECT productName, productImage, productPrice, quantity, description, availableID, categoryID"
                            + " FROM tblProducts "
                            + " WHERE productID=?";
                stm = conn.prepareStatement(sql);
                stm.setString(1, productID);
                rs = stm.executeQuery();
                
                if (rs.next()) {
                    String productName = rs.getString("productName");
                    String productImage = rs.getString("productImage");
                    double productPrice = Double.parseDouble(rs.getString("productPrice"));
                    int quantity = Integer.parseInt(rs.getString("quantity"));
                    String description = rs.getString("description");
                    String availableName = dao.convertAvailableName(Integer.parseInt(rs.getString("availableID")));
                    String categoryName = dao.convertCategoryName(Integer.parseInt(rs.getString("categoryID")));

                    product = new ProductDTO(productID, productName, productImage, productPrice, quantity, description, availableName, categoryName, "", 1);
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
        
        return product;
    }
    
    public ProductDTO getProductForCart(String productID) throws SQLException {
        ProductDTO product = new ProductDTO();
        ProductDAO dao = new ProductDAO();
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try {
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "SELECT productName, productImage, productPrice, quantity"
                            + " FROM tblProducts "
                            + " WHERE productID=?";
                stm = conn.prepareStatement(sql);
                stm.setString(1, productID);
                rs = stm.executeQuery();
                
                if (rs.next()) {
                    String productName = rs.getString("productName");
                    String productImage = rs.getString("productImage");
                    double productPrice = Double.parseDouble(rs.getString("productPrice"));
                    int quantity = Integer.parseInt(rs.getString("quantity"));

                    product = new ProductDTO(productID, productName, productImage, productPrice, quantity, "", "", "", "", 1);
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
        
        return product;
    }
    
    public String convertAvailableName(int availableID) throws SQLException {
        String availableName = null;
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try {
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "SELECT availableName"
                            + " FROM tblProductAvailable "
                            + " WHERE availableID=?";
                stm = conn.prepareStatement(sql);
                stm.setInt(1, availableID);
                rs = stm.executeQuery();
                
                if (rs.next()) {
                    availableName = rs.getString("availableName");
                    
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
        
        return availableName;
    }
    
    public String convertCategoryName(int categoryID) throws SQLException {
        String categoryName = null;
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try {
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "SELECT categoryName"
                            + " FROM tblCategories "
                            + " WHERE categoryID=?";
                stm = conn.prepareStatement(sql);
                stm.setInt(1, categoryID);
                rs = stm.executeQuery();
                
                if (rs.next()) {
                    categoryName = rs.getString("categoryName");
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
        
        return categoryName;
    }

    public static void main(String[] args) throws SQLException {
        ProductDAO dao = new ProductDAO();
        
        System.out.println((dao.getProduct("12515190")).toString());
    }
}
