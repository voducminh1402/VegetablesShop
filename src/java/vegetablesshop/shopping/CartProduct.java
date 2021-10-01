/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vegetablesshop.shopping;

/**
 *
 * @author VODUCMINH
 */
public class CartProduct {
    private String productID;
    private String productName;
    private double productPrice;
    private String productImage;
    private int quantity;

    public CartProduct() {
        productID = "";
        productName= "";
        productPrice = 0;
        productImage = "";
        quantity = 0;
    }

    public CartProduct(String productID, String productName, double productPrice, String productImage, int quantity) {
        this.productID = productID;
        this.productName = productName;
        this.productPrice = productPrice;
        this.productImage = productImage;
        this.quantity = quantity;
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

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    
}
