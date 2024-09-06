package org.car.repository;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

//import javax.swing.tree.RowMapper;
import javax.swing.tree.TreePath;

import org.car.dbquery.DbQueries;
import org.car.model.GenBillModel;
import org.car.model.ServicingModel;
import org.car.model.ServicingToBillModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class ServicingRepo {
	@Autowired
	JdbcTemplate template;
	public void save(ServicingModel servicingModel) {
        
        template.update(DbQueries.ADD_SERVICING,servicingModel.getVehicleID(), servicingModel.getServiceDate(),
                servicingModel.getServiceID(), servicingModel.getTotalPrice(),servicingModel.getSubServiceID(),servicingModel.getAccessoryID());
    }
	
	
	public List<ServicingToBillModel> getServicingToBillModel(int id){
		List<ServicingToBillModel> list;
		list=template.query(" select s.servicingid,s.servicedate,s.totalprice,v.vehicleid,c.totalvisits from servicing s inner join vehicle v on s.vehicleid=v.vehicleid inner join customer c on c.customerid=v.customerid where v.vehicleid=?", new Object[] {id},new RowMapper() {

			@Override
			public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				ServicingToBillModel model = new ServicingToBillModel();
                model.setServicingID(rs.getInt("servicingid"));
                model.setServiceDate(rs.getDate("servicedate"));
                model.setTotalPrice(rs.getDouble("totalprice"));
                model.setVehicleID(rs.getInt("vehicleid"));
                model.setTotalVisits(rs.getInt("totalvisits"));
                return model;
			}
			
		});
		return list;
	}
	public int generateBill(GenBillModel model) {
		return template.update(DbQueries.ADD_BILL,new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setInt(1,model.getServicingID());
				ps.setDate(2, (Date) model.getBillDate());
				ps.setDouble(3, model.getTotalAmount());
				ps.setDouble(4, model.getDiscountApplied());
				ps.setDouble(5, model.getFinalAmount());
				
			}
			
		});
	}

}
