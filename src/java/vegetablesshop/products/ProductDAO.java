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
                            + " FROM tblProducts ";
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
                    
                    listProduct.add(new ProductDTO(productID, productName, productImage, productPrice, quantity, description, availableName, categoryName, ""));
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
    
    public List<ProductDTO> getAllProduct() throws SQLException {
        List<ProductDTO> listProduct = new ArrayList<>();
        ProductDAO dao = new ProductDAO();
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try {
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "SELECT productID, productName, productImage, productPrice, quantity, description, availableID, categoryID, createDate"
                            + " FROM tblProducts";
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
                    String createDate = rs.getString("createDate");

                    
                    listProduct.add(new ProductDTO(productID, productName, productImage, productPrice, quantity, description, availableName, categoryName, createDate));
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

                    product = new ProductDTO(productID, productName, productImage, productPrice, quantity, description, availableName, categoryName, "");
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
    
    public List<ProductDTO> getProductForSearch(String search) throws SQLException {
        List<ProductDTO> productList = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try {
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "SELECT productID, productName, productImage, productPrice, availableID"
                            + " FROM tblProducts "
                            + " WHERE productName LIKE ?";
                stm = conn.prepareStatement(sql);
                stm.setString(1, "%" + search + "%");
                rs = stm.executeQuery();
                
                while (rs.next()) {
                    String productID = rs.getString("productID");
                    String productName = rs.getString("productName");
                    String productImage = rs.getString("productImage");
                    double productPrice = Double.parseDouble(rs.getString("productPrice"));
                    String availableName = convertAvailableName(Integer.parseInt(rs.getString("availableID")));

                    productList.add(new ProductDTO(productID, productName, productImage, productPrice, 1, "", availableName, "", ""));
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
        
        return productList;
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

                    product = new ProductDTO(productID, productName, productImage, productPrice, quantity, "", "", "", "");
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
    
    public int getProductQuantity(String productID) throws SQLException {
        int quantity = 0;
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try {
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "SELECT quantity"
                            + " FROM tblProducts "
                            + " WHERE productID=?";
                stm = conn.prepareStatement(sql);
                stm.setString(1, productID);
                rs = stm.executeQuery();
                
                if (rs.next()) {
                    quantity = Integer.parseInt(rs.getString("quantity"));
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
        
        return quantity;
    }
    
    public boolean minusProduct(String productID, int quantity) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        
        try {
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "UPDATE tblProducts"
                            + " SET quantity = ? "
                            + " WHERE productID=?";
                stm = conn.prepareStatement(sql);
                stm.setInt(1, getProductQuantity(productID) - quantity);
                stm.setString(2, productID);
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
    
    public int checkQuantityAvailable(String productID) throws SQLException {
        int check = 0;
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try {
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "SELECT quantity"
                            + " FROM tblProducts "
                            + " WHERE productID=?";
                stm = conn.prepareStatement(sql);
                stm.setString(1, productID);
                rs = stm.executeQuery();
                
                if (rs.next()) {
                    int quantity = Integer.parseInt(rs.getString("quantity"));
                    check = quantity;
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
        
        return check;
    }
    
    public List<CategoryDTO> getCategoryList() throws SQLException {
        List<CategoryDTO> cateList = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try {
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "SELECT categoryID, categoryName"
                            + " FROM tblCategories ";
                stm = conn.prepareStatement(sql);
                rs = stm.executeQuery();
                
                while (rs.next()) {
                    String categoryID = rs.getString("categoryID");
                    String categoryName = rs.getString("categoryName");
                    
                    cateList.add(new CategoryDTO(categoryID, categoryName, ""));
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
        
        return cateList;
    }
    
    public boolean updateProduct(ProductDTO product) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "UPDATE tblProducts "
                            + " SET categoryID=?, productName=?, productPrice=?, description=?, productImage=?, quantity=?, availableID=? "
                            + " WHERE productID=?";
                stm = conn.prepareStatement(sql);
                
                stm.setInt(1, Integer.parseInt(product.getCategoryName()));
                stm.setString(2, product.getProductName());
                stm.setDouble(3, product.getProductPrice());
                stm.setString(4, product.getDescription());
                stm.setString(5, product.getProductImage());
                stm.setInt(6, product.getQuantity());
                stm.setInt(7, Integer.parseInt(product.getAvailableName()));
                stm.setString(8, product.getProductID());
                
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
    
    public boolean deleteProduct(String productId) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        
        try {
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                String sql = "DELETE tblProducts WHERE productID=?";
                stm = conn.prepareStatement(sql);
                stm.setString(1, productId);
                
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
    
    public boolean insertProduct(ProductDTO product) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        
        try {
            conn = DBUtils.getConnection();
            
            if (conn != null) {
                
                String sql = "INSERT INTO tblProducts(productID, productName, productImage, productPrice, quantity, description, availableID, categoryID, createDate) "
                            + "VALUES(?,?,?,?,?,?,?,?,?)";
                
                stm = conn.prepareStatement(sql);
                stm.setString(1, product.getProductID());
                stm.setString(2, product.getProductName());
                stm.setString(3, product.getProductImage());
                stm.setDouble(4, product.getProductPrice());
                stm.setInt(5, product.getQuantity());
                stm.setString(6, product.getDescription());
                stm.setInt(7, Integer.parseInt(product.getAvailableName()));
                stm.setInt(8, Integer.parseInt(product.getCategoryName()));
                stm.setString(9, product.getCreateDate());
                
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
    
    
    
    public static void main(String[] args) throws SQLException {
        ProductDAO dao = new ProductDAO();
        dao.getAllProduct();
        for (ProductDTO product : dao.getAllProduct()) {
            System.out.println(product.getCreateDate());
        }
        
    }
}
