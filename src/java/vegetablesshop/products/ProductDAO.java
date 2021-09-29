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
                    int availableID = Integer.parseInt(rs.getString("availableID"));
                    int categoryID = Integer.parseInt(rs.getString("categoryID"));
                    
                    listProduct.add(new ProductDTO(productID, productName, productImage, productPrice, quantity, description, availableID, categoryID, "", 1));
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
    
    
//    public static void main(String[] args) throws SQLException {
//        ProductDAO myDao = new ProductDAO();
//        List<ProductDTO> newList = myDao.getListActiveProduct();
//        
//        for (ProductDTO productDTO : newList) {
//            System.out.println(productDTO.getProductID());
//        }
//    }
}
