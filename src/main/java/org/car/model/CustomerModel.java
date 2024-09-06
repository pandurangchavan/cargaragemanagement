package org.car.model;

import org.springframework.stereotype.Component;

@Component
public class CustomerModel {
	  private int customerID;
	    private String name;
	    private String address;
	    private String phone;
	    private String email;
	    private int totalVisits;
	    private String username;
	    private String password;
	    public CustomerModel() {
			// TODO Auto-generated constructor stub
		}
	    public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		// Constructor
	   
	    // Getters and Setters
	    public int getCustomerID() {
	        return customerID;
	    }

	    public CustomerModel(int customerID, String name, String address, String phone, String email, int totalVisits,
				String username, String password) {
			super();
			this.customerID = customerID;
			this.name = name;
			this.address = address;
			this.phone = phone;
			this.email = email;
			this.totalVisits = totalVisits;
			this.username = username;
			this.password = password;
		}

		public void setCustomerID(int customerID) {
	        this.customerID = customerID;
	    }

	    public String getName() {
	        return name;
	    }

	    public void setName(String name) {
	        this.name = name;
	    }

	    public String getAddress() {
	        return address;
	    }

	    public void setAddress(String address) {
	        this.address = address;
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

	    public int getTotalVisits() {
	        return totalVisits;
	    }

	    public void setTotalVisits(int totalVisits) {
	        this.totalVisits = totalVisits;
	    }

		@Override
		public String toString() {
			return "CustomerModel [customerID=" + customerID + ", name=" + name + ", address=" + address + ", phone="
					+ phone + ", email=" + email + ", totalVisits=" + totalVisits + ", username=" + username
					+ ", password=" + password + "]";
		}

	    // toString method for easy printing
	   

}
