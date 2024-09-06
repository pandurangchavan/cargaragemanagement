package org.car.model;

import java.sql.Date;

public class ServicingToBillModel {
    private int servicingID;
    private Date serviceDate;
    private double totalPrice;
    private int vehicleID;
    private int totalVisits;

    // Constructor with all fields
    public ServicingToBillModel(int servicingID, Date serviceDate, double totalPrice, int vehicleID, int totalVisits) {
        this.servicingID = servicingID;
        this.serviceDate = serviceDate;
        this.totalPrice = totalPrice;
        this.vehicleID = vehicleID;
        this.totalVisits = totalVisits;
    }

    // Default constructor
    public ServicingToBillModel() {}

    // Getters and Setters
    public int getServicingID() {
        return servicingID;
    }

    public void setServicingID(int servicingID) {
        this.servicingID = servicingID;
    }

    public Date getServiceDate() {
        return serviceDate;
    }

    public void setServiceDate(Date serviceDate) {
        this.serviceDate = serviceDate;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getVehicleID() {
        return vehicleID;
    }

    public void setVehicleID(int vehicleID) {
        this.vehicleID = vehicleID;
    }

    public int getTotalVisits() {
        return totalVisits;
    }

    public void setTotalVisits(int totalVisits) {
        this.totalVisits = totalVisits;
    }

    @Override
    public String toString() {
        return "ServicingDetailsModel{" +
                "servicingID=" + servicingID +
                ", serviceDate=" + serviceDate +
                ", totalPrice=" + totalPrice +
                ", vehicleID=" + vehicleID +
                ", totalVisits=" + totalVisits +
                '}';
    }
}
