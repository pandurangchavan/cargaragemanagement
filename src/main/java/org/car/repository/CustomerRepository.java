package org.car.repository;
import org.car.dbquery.*;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.car.model.BillModel;
import org.car.model.CustomerModel;
import org.car.model.ServicingDetailsModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
@Repository
public class CustomerRepository {
	private List<CustomerModel> list = new ArrayList<CustomerModel>();
	@Autowired
	JdbcTemplate template;
	public boolean isAddCustomer(CustomerModel model) throws SQLException {
		boolean b = false;
		int value=template.update(DbQueries.ADD_CUSTOMER,new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setString(1, model.getName());
				ps.setString(2, model.getAddress());
				ps.setString(3, model.getPhone());
				ps.setString(4, model.getEmail());
				ps.setInt(5, model.getTotalVisits());
				ps.setString(6, model.getUsername());
                ps.setString(7, model.getPassword());
				
			}
			
		});
			
			
//			System.out.println(value);
			if (value>0) {
				b=true;
			}
			else {
				b=false;
			}

		return b;

		
		
		
	}
	@Autowired
	CustomerModel model;
	
	public List<CustomerModel> getAllCustomers() {
	    try {
	        // RowMapper implementation to map each row of the result set to a CustomerModel object
	        RowMapper<CustomerModel> r = new RowMapper<CustomerModel>() {

	            @Override
	            public CustomerModel mapRow(ResultSet rs, int rowNum) throws SQLException {
	                CustomerModel model = new CustomerModel(); // Initialize the model for each row
	                model.setCustomerID(rs.getInt(1));
	                model.setName(rs.getString(2));
	                model.setAddress(rs.getString(3));
	                model.setPhone(rs.getString(4));
	                model.setEmail(rs.getString(5));
	                model.setTotalVisits(rs.getInt(6));
	                model.setUsername(rs.getString(7));
	                model.setPassword(rs.getString(8));
	                return model;
	            }
	        };

	        // Execute the query and get the list of customers
	        List<CustomerModel> list = template.query(DbQueries.GET_ALL_CUSTOMERS, r);

	        // Return the list if it contains elements, otherwise return null
	        return list.isEmpty() ? null : list;

	    } catch (Exception e) {
	        e.printStackTrace(); // Optional: print the stack trace for debugging
	        return null;
	    }
	}
	public String getCustName(int id) {
	    String name = template.queryForObject(
	        "select name from customer where customerid=?",
	        new Object[]{id},
	        new RowMapper<String>() {
	            @Override
	            public String mapRow(ResultSet rs, int rowNum) throws SQLException {
	                return rs.getString("name");
	            }
	        }
	    );
	    return name;
	}

public List<ServicingDetailsModel> getAllServiceingDetails(int id){
	RowMapper<ServicingDetailsModel> r=new RowMapper<ServicingDetailsModel>() {
		
		@Override
		public ServicingDetailsModel mapRow(ResultSet rs, int rowNum) throws SQLException {
			ServicingDetailsModel model=new ServicingDetailsModel();
			model.setCustomerid(rs.getInt(1));
			model.setName(rs.getString(2));
			model.setServicingid(rs.getInt(3));
			model.setTotalprice(rs.getDouble(4));
			model.setVehicleid(rs.getInt(5));
			// TODO Auto-generated method stub
			return model;
		}
	};
	List<ServicingDetailsModel> list=template.query(" select c.customerid , c.name ,s.servicingid,s.totalprice,v.vehicleid from customer c inner join vehicle v on c.customerid=v.customerid inner join servicing s on v.vehicleid=s.vehicleid where c.customerid=?;",new Object[]{id}, r);
	return list.isEmpty() ? null : list;

}
public List<BillModel> getBill(int id) {
//    String sql = "SELECT c.name, c.phone, c.email, v.vehiclenumber, v.model, v.make, "
//               + "s.servicedate, se.servicename, se.servicedescription, se.baseprice, "
//               + "ss.subservicename, ss.subservicedescription, ss.subserviceprice, "
//               + "b.billdate, b.totalamount, b.discountapplied, b.finalamount "
//               + "FROM customer c "
//               + "INNER JOIN vehicle v ON c.customerid = v.customerid "
//               + "INNER JOIN servicing s ON v.vehicleid = s.vehicleid "
//               + "INNER JOIN bill b ON s.servicingid = b.servicingid "
//               + "INNER JOIN service se ON s.serviceid = se.serviceid "
//               + "INNER JOIN servicingdetails sd ON s.servicingid = sd.servicingid "
//               + "INNER JOIN subservice ss ON ss.subserviceid = sd.subserviceid "
//               + "WHERE c.customerid = ?"; // Adjust this condition based on your requirements.
String sql=" select c.name,c.phone,c.email,v.vehiclenumber,v.model,v.make,s.servicedate,se.servicename,se.servicedescription,se.baseprice,ss.subservicename,ss.subservicedescription,ss.subserviceprice,b.billdate,b.totalamount,b.discountapplied,b.finalamount from customer c inner join vehicle v on c.customerid=v.customerid inner join servicing s on v.vehicleid=s.vehicleid inner join bill b on s.servicingid=b.servicingid inner join service se on s.serviceid=se.serviceid inner join subservice ss on ss.subserviceid=s.subserviceid where c.customerid = ? order by s.servicedate desc limit 1 offset 1";
    RowMapper<BillModel> r = new RowMapper<BillModel>() {
        @Override
        public BillModel mapRow(ResultSet rs, int rowNum) throws SQLException {
            BillModel serviceDetails = new BillModel();
            serviceDetails.setName(rs.getString("name"));
            serviceDetails.setPhone(rs.getString("phone"));
            serviceDetails.setEmail(rs.getString("email"));
            serviceDetails.setVehicleNumber(rs.getString("vehiclenumber"));
            serviceDetails.setModel(rs.getString("model"));
            serviceDetails.setMake(rs.getString("make"));
            serviceDetails.setServiceDate(rs.getDate("servicedate"));
            serviceDetails.setServiceName(rs.getString("servicename"));
            serviceDetails.setServiceDescription(rs.getString("servicedescription"));
            serviceDetails.setBasePrice(rs.getBigDecimal("baseprice"));
            serviceDetails.setSubServiceName(rs.getString("subservicename"));
            serviceDetails.setSubServiceDescription(rs.getString("subservicedescription"));
            serviceDetails.setSubServicePrice(rs.getBigDecimal("subserviceprice"));
            serviceDetails.setBillDate(rs.getDate("billdate"));
            serviceDetails.setTotalAmount(rs.getBigDecimal("totalamount"));
            serviceDetails.setDiscountApplied(rs.getBigDecimal("discountapplied"));
            serviceDetails.setFinalAmount(rs.getBigDecimal("finalamount"));
            return serviceDetails;
        }
    };

    List<BillModel> list = template.query(sql, new Object[]{id}, r);
    return list;
}
	
	public boolean isDeleteCustomer(int id) throws SQLException {
//		stmt=conn.prepareStatement(DbQueries.DELETE_CUSTOMER);
//		stmt.setString(1, name);
//		int val=stmt.executeUpdate();
		int val=template.update(DbQueries.DELETE_CUSTOMER,new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setInt(1,id);
				// TODO Auto-generated method stub
				
			}
			
		});
		
		
		
		return val>0?true:false;
		
	}
//	public boolean iscustomerUpdate(int id,String name) throws SQLException {
//		stmt=conn.prepareStatement(DbQueries.UPDATE_CUSTOMER_ID);
//		stmt.setInt(1, id);
//		stmt.setString(2, name);
//		int val=stmt.executeUpdate();
//		return val>0?true:false;
//		
//	}
//	public boolean iscustomerUpdate(String newName,String name) throws SQLException {
//		stmt=conn.prepareStatement(DbQueries.UPDATE_CUSTOMER_NAME);
//		stmt.setNString(1, newName);
//		stmt.setString(2, name);
//		int val=stmt.executeUpdate();
//		return val>0?true:false;
//		
//	}

}
