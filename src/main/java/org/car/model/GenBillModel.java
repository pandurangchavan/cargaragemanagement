package org.car.model;

import java.math.BigDecimal;
import java.util.Date;

public class GenBillModel {

    private int billID;
    private Integer servicingID; // Use Integer to allow null values
    private Date billDate;
    private Double totalAmount;
    private Double discountApplied;
    private Double finalAmount;

    // Getters and Setters

    public int getBillID() {
        return billID;
    }

    public void setBillID(int billID) {
        this.billID = billID;
    }

    public Integer getServicingID() {
        return servicingID;
    }

    public void setServicingID(Integer servicingID) {
        this.servicingID = servicingID;
    }

    public Date getBillDate() {
        return billDate;
    }

    public void setBillDate(Date billDate) {
        this.billDate = billDate;
    }

    public Double getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(Double totalAmount) {
        this.totalAmount = totalAmount;
    }

    public Double getDiscountApplied() {
        return discountApplied;
    }

    public void setDiscountApplied(Double discountApplied) {
        this.discountApplied = discountApplied;
    }

    public Double getFinalAmount() {
        return finalAmount;
    }

    public void setFinalAmount(Double finalAmount) {
        this.finalAmount = finalAmount;
    }

    @Override
    public String toString() {
        return "GenBillModel{" +
                "billID=" + billID +
                ", servicingID=" + servicingID +
                ", billDate=" + billDate +
                ", totalAmount=" + totalAmount +
                ", discountApplied=" + discountApplied +
                ", finalAmount=" + finalAmount +
                '}';
    }
}
