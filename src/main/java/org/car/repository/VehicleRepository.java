package org.car.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.car.dbquery.DbQueries;
import org.car.model.VehicleModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class VehicleRepository {
	@Autowired
	JdbcTemplate template;
	public int isAddVehicle(VehicleModel model) {
		int val=template.update(DbQueries.ADD_VEHICLE,new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setInt(1,model.getCustomerID());
				ps.setString(2, model.getVehicleNumber());
				ps.setString(3, model.getModel());
				ps.setString(4, model.getMake());
				ps.setInt(5, model.getYear());
			}
			
		});
		return val;
		
	}
	int vehicleid;
	
	public List<VehicleModel> getVehicles(int id){
		VehicleModel model=new VehicleModel();
		List<VehicleModel> list=template.query(DbQueries.GET_VEHICLE_CUST, new Object[]{id},new RowMapper() {

			@Override
			public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				model.setVehicleID(rs.getInt(1));
				model.setCustomerID(rs.getInt(2));
				model.setVehicleNumber(rs.getString(3));
				model.setModel(rs.getString(4));
				model.setMake(rs.getString(5));
				model.setYear(rs.getInt(6));
				vehicleid=rs.getInt(1);
				
				return model;
			}
			
		});
		return list;
	}
	public int getVehicleId() {
		return vehicleid;
	}
}
