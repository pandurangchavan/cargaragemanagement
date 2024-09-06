package org.car.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.car.dbquery.DbQueries;
import org.car.model.AccessoriesModel;
import org.car.model.ServiceModel;
import org.car.model.SubServiceModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
@Repository
public class ServiceRepo {
	@Autowired
	JdbcTemplate template;
	public List<ServiceModel> getAllServices(){
		List<ServiceModel> list=template.query(DbQueries.GET_ALL_SERVICES,new RowMapper() {

			@Override
			public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				ServiceModel model=new ServiceModel();
				model.setServiceID(rs.getInt(1));
				model.setServiceName(rs.getString(2));
				model.setServiceDescription(rs.getString(3));
				model.setBasePrice(rs.getDouble(4));
				return model;
			}
			
		});
		return list;
	}
	
	public int isAddService(ServiceModel model) {
		int val=template.update(DbQueries.ADD_SERVICE,new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setString(1, model.getServiceName());
				ps.setString(2, model.getServiceDescription());
				ps.setDouble(3, model.getBasePrice());
			}
			
		});
		return val;
	}
	public List<SubServiceModel> getAllSubServices(){
		List<SubServiceModel> list=template.query(DbQueries.GET_ALL_SUBSERVICES, new RowMapper() {
			
			@Override
			public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
				SubServiceModel model=new SubServiceModel();
				// TODO Auto-generated method stub
				model.setSubServiceID(rs.getInt(1));
				model.setServiceID(rs.getInt(2));
				model.setSubServiceName(rs.getString(3));
				model.setSubServiceDescription(rs.getString(4));
				model.setSubServicePrice(rs.getBigDecimal(5));
				
				
				return model;
			}
			
		});
		return list;
	}
	public List<AccessoriesModel> getAllAccessories(){
		List list=template.query(DbQueries.GET_ALL_ACCESSORIES, new RowMapper() {

			@Override
			public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
				AccessoriesModel model=new AccessoriesModel();
				model.setAccessoriesId(rs.getInt(1));
				model.setName(rs.getString(2));
				model.setPrice(rs.getBigDecimal(3));
				// TODO Auto-generated method stub
				return model;
			}
		});
		
		
		return list;
	}
}
