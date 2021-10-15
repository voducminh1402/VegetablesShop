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
public class CategoryDTO {
    private String categoryID;
    private String categoryName;
    private String categoryImage;

    public CategoryDTO() {
    }

    public CategoryDTO(String categoryID, String categoryName, String categoryImage) {
        this.categoryID = categoryID;
        this.categoryName = categoryName;
        this.categoryImage = categoryImage;
    }

    public String getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(String categoryID) {
        this.categoryID = categoryID;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getCategoryImage() {
        return categoryImage;
    }

    public void setCategoryImage(String categoryImage) {
        this.categoryImage = categoryImage;
    }
    
    
    
    
}
