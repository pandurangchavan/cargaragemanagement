package org.car.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.car.dbquery.DbQueries;
import org.car.model.LoginModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.RowMapperResultSetExtractor;
import org.springframework.stereotype.Repository;
@Repository
public class ValidateUserRepoImp implements ValidateUserRepo {

@Autowired
JdbcTemplate template;
	public LoginModel isValidate (LoginModel model) {
		try {
			RowMapper<LoginModel> r=new RowMapper<LoginModel>() {
				
				@Override
				public LoginModel mapRow(ResultSet rs, int rowNum) throws SQLException {
					// TODO Auto-generated method stub
					
					model.setLoginType(rs.getString("logintype"));
					model.setUser_id(rs.getInt("user_id"));
					return model;
				}
			};
			template.query(DbQueries.LOGIN_ADMIN ,new Object[] {model.getUsername(),model.getPassword()},r);
			
		
			
			return model;
		}
		catch(Exception ex) {
			System.out.println("Error is ..."+ex);
			return null;
		}
		
	}
	public static void main(String args[]) {
		ValidateUserRepoImp imp=new ValidateUserRepoImp();
		LoginModel model=new LoginModel();
		model.setUsername("abc");
		model.setPassword("abc");
		model=imp.isValidate(model);
		System.out.println(model);
	}

}
