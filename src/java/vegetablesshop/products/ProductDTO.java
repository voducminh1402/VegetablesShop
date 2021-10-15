/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vegetablesshop.products;

/**
 *
 * @author VODUCMINH
 */
public class ProductDTO {
    private String productID;
    private String productName;
    private String productImage;
    private double productPrice;
    private int quantity;
    private String description;
    private String availableName;
    private String categoryName;
    private String createDate;

    public ProductDTO() {
    }

    public ProductDTO(String productID, String productName, String productImage, double productPrice, int quantity, String description, String availableName, String categoryName, String createDate) {
        this.productID = productID;
        this.productName = productName;
        this.productImage = productImage;
        this.productPrice = productPrice;
        this.quantity = quantity;
        this.description = description;
        this.availableName = availableName;
        this.categoryName = categoryName;
        this.createDate = createDate;
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAvailableName() {
        return availableName;
    }

    public void setAvailableName(String availableName) {
        this.availableName = availableName;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    @Override
    public String toString() {
        return "ProductDTO{" + "productID=" + productID + ", productName=" + productName + ", productImage=" + productImage + ", productPrice=" + productPrice + ", quantity=" + quantity + ", description=" + description + ", availableID=" + availableName + ", categoryID=" + categoryName + ", createDate=" + createDate + ", productStatus=" + '}';
    }
    
    
    
}
