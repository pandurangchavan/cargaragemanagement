package org.car.model;

import java.math.BigDecimal;

public class SubServiceModel {

    private int subServiceID;
    private int serviceID;
    private String subServiceName;
    private String subServiceDescription;
    private BigDecimal subServicePrice;

    // Getters and Setters

    public int getSubServiceID() {
        return subServiceID;
    }

    public void setSubServiceID(int subServiceID) {
        this.subServiceID = subServiceID;
    }

    public int getServiceID() {
        return serviceID;
    }

    public void setServiceID(int serviceID) {
        this.serviceID = serviceID;
    }

    public String getSubServiceName() {
        return subServiceName;
    }

    public void setSubServiceName(String subServiceName) {
        this.subServiceName = subServiceName;
    }

    public String getSubServiceDescription() {
        return subServiceDescription;
    }

    public void setSubServiceDescription(String subServiceDescription) {
        this.subServiceDescription = subServiceDescription;
    }

    public BigDecimal getSubServicePrice() {
        return subServicePrice;
    }

    public void setSubServicePrice(BigDecimal subServicePrice) {
        this.subServicePrice = subServicePrice;
    }

	@Override
	public String toString() {
		return "SubServiceModel [subServiceID=" + subServiceID + ", serviceID=" + serviceID + ", subServiceName="
				+ subServiceName + ", subServiceDescription=" + subServiceDescription + ", subServicePrice="
				+ subServicePrice + "]";
	}
    
}
