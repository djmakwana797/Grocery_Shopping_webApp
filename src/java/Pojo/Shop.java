package Pojo;
// Generated 7 Mar, 2021 12:51:36 PM by Hibernate Tools 4.3.1



/**
 * Shop generated by hbm2java
 */
public class Shop  implements java.io.Serializable {


     private Long shopId;
     private String shopOwner;
     private String shopEmail;
     private String shopPass;
     private String shopName;
     private String shopPhone;
     private String shopDetail;

    public Shop() {
    }
     public Shop(String shopOwner,String shopEmail,String shopPass, String shopPhone) {
       this.shopOwner = shopOwner;
       this.shopEmail=shopEmail;
       this.shopPass=shopPass;
       this.shopPhone = shopPhone;
    }
     
    public Shop(String shopOwner,String shopEmail,String shopPass,String shopName, String shopPhone, String shopDetail) {
       this.shopOwner = shopOwner;
       this.shopEmail=shopEmail;
       this.shopPass=shopPass;
       this.shopName = shopName;
       this.shopPhone = shopPhone;
       this.shopDetail = shopDetail;
    }
    public String getShopEmail() {
        return shopEmail;
    }

    public String getShopPass() {
        return shopPass;
    }
    
    public void setShopEmail(String shopEmail) {
        this.shopEmail = shopEmail;
    }

    public void setShopPass(String shopPass) {
        this.shopPass = shopPass;
    }
    public Long getShopId() {
        return this.shopId;
    }
    
    public void setShopId(Long shopId) {
        this.shopId = shopId;
    }
    public String getShopOwner() {
        return this.shopOwner;
    }
    
    public void setShopOwner(String shopOwner) {
        this.shopOwner = shopOwner;
    }
    public String getShopName() {
        return this.shopName;
    }
    
    public void setShopName(String shopName) {
        this.shopName = shopName;
    }
    public String getShopPhone() {
        return this.shopPhone;
    }
    
    public void setShopPhone(String shopPhone) {
        this.shopPhone = shopPhone;
    }
    public String getShopDetail() {
        return this.shopDetail;
    }
    
    public void setShopDetail(String shopDetail) {
        this.shopDetail = shopDetail;
    }




}

