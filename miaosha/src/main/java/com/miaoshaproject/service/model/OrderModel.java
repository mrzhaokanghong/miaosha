package com.miaoshaproject.service.model;
/**
 * 用户下单模型
 */

import java.math.BigDecimal;
public class OrderModel {
    //订单流水号
    private String id;
    //购买用户ID
    private Integer userId;
    //购买商品iD
    private Integer itemId;
    //若非空则是以秒杀方式下单
    private Integer promoId;
    //购买商品单价 若promoId 非空,则表示秒杀价格
    private BigDecimal itemPrice;
    //购买数量
    private Integer amount;
    //购买商品金额
    private BigDecimal orderPrice;

    public BigDecimal getItemPrice() {
        return itemPrice;
    }

    public void setItemPrice(BigDecimal itemPrice) {
        this.itemPrice = itemPrice;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public BigDecimal getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(BigDecimal orderPrice) {
        this.orderPrice = orderPrice;
    }

    public Integer getPromoId() {
        return promoId;
    }

    public void setPromoId(Integer promoId) {
        this.promoId = promoId;
    }
}
