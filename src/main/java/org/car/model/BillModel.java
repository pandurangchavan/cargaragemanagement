package org.car.model;
import java.math.BigDecimal;
import java.util.Date;
public class BillModel {
	private String name;
    private String phone;
    private String email;
    private String vehicleNumber;
    private String model;
    private String make;
    private Date serviceDate;
    private String serviceName;
    private String serviceDescription;
    private BigDecimal basePrice;
    private String subServiceName;
    private String subServiceDescription;
    private BigDecimal subServicePrice;
    private Date billDate;
    private BigDecimal totalAmount;
    private BigDecimal discountApplied;
    private BigDecimal finalAmount;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getVehicleNumber() {
		return vehicleNumber;
	}
	public void setVehicleNumber(String vehicleNumber) {
		this.vehicleNumber = vehicleNumber;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getMake() {
		return make;
	}
	public void setMake(String make) {
		this.make = make;
	}
	public Date getServiceDate() {
		return serviceDate;
	}
	public void setServiceDate(Date serviceDate) {
		this.serviceDate = serviceDate;
	}
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public String getServiceDescription() {
		return serviceDescription;
	}
	public void setServiceDescription(String serviceDescription) {
		this.serviceDescription = serviceDescription;
	}
	public BigDecimal getBasePrice() {
		return basePrice;
	}
	public void setBasePrice(BigDecimal basePrice) {
		this.basePrice = basePrice;
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
	public Date getBillDate() {
		return billDate;
	}
	public void setBillDate(Date billDate) {
		this.billDate = billDate;
	}
	public BigDecimal getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(BigDecimal totalAmount) {
		this.totalAmount = totalAmount;
	}
	public BigDecimal getDiscountApplied() {
		return discountApplied;
	}
	public void setDiscountApplied(BigDecimal discountApplied) {
		this.discountApplied = discountApplied;
	}
	public BigDecimal getFinalAmount() {
		return finalAmount;
	}
	public void setFinalAmount(BigDecimal finalAmount) {
		this.finalAmount = finalAmount;
	}
	@Override
	public String toString() {
		return "BillModel [name=" + name + ", phone=" + phone + ", email=" + email + ", vehicleNumber=" + vehicleNumber
				+ ", model=" + model + ", make=" + make + ", serviceDate=" + serviceDate + ", serviceName="
				+ serviceName + ", serviceDescription=" + serviceDescription + ", basePrice=" + basePrice
				+ ", subServiceName=" + subServiceName + ", subServiceDescription=" + subServiceDescription
				+ ", subServicePrice=" + subServicePrice + ", billDate=" + billDate + ", totalAmount=" + totalAmount
				+ ", discountApplied=" + discountApplied + ", finalAmount=" + finalAmount + "]";
	}
    
    

}
