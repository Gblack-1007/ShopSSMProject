package com.gjs.pojo;

import java.math.BigDecimal;
import java.text.DecimalFormat;

public class EcShopCarShow extends EcShopcar {

    private String image;
    private String title;
    private Double price;
    private String price2;//疯狂价格，是计算出来的
    private Double discount;//折扣
    private String priceTotal;
    public String getPriceTotal(){
         price2 = getPrice2();
        BigDecimal bg1 = new BigDecimal(price2);
        BigDecimal bg2 = new BigDecimal(buynum);
        BigDecimal res = bg1.multiply(bg2);
        priceTotal = new DecimalFormat("0.00").format(res);

        return priceTotal;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setPrice(Double price) {
        this.price = price;
    }
    public Double getPrice() {

        return price;
    }
    public String getPrice2() {
        double price = this.price;
        double discount = this.discount;
        BigDecimal bg1 = new BigDecimal(price);
        BigDecimal bg2 = new BigDecimal(discount);
        BigDecimal res = bg1.multiply(bg2);
        price2 = new DecimalFormat("0.00").format(res);
        return price2;
    }


    public Double getDiscount() {
        return discount;
    }

    public void setDiscount(Double discount) {
        this.discount = discount;
    }


    @Override
    public String toString() {
        return "EcShopCarShow{" +
                "image='" + image + '\'' +
                ", title='" + title + '\'' +
                ", price=" + price +
                ", price2='" + price2 + '\'' +
                ", discount=" + discount +
                ", priceTotal='" + priceTotal + '\'' +
                ", id=" + id +
                ", articleid=" + articleid +
                ", buynum=" + buynum +
                ", userid=" + userid +
                '}';
    }
}
