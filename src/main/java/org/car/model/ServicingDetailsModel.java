package org.car.model;

import org.springframework.stereotype.Component;

@Component
public class ServicingDetailsModel {
	private int customerid;
	private String name;
	private int servicingid;
	private double totalprice;
	private int vehicleid;
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getServicingid() {
		return servicingid;
	}
	public void setServicingid(int servicingid) {
		this.servicingid = servicingid;
	}
	public double getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}
	public int getVehicleid() {
		return vehicleid;
	}
	public void setVehicleid(int vehicleid) {
		this.vehicleid = vehicleid;
	}
	@Override
	public String toString() {
		return "ServicingDetailsModel [customerid=" + customerid + ", name=" + name + ", servicingid=" + servicingid
				+ ", totalprice=" + totalprice + ", vehicleid=" + vehicleid + "]";
	}
	
	
}
