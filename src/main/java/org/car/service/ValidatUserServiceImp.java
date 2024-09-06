package org.car.service;
import org.car.model.LoginModel;
import org.car.repository.ValidateUserRepo;
import org.car.repository.ValidateUserRepoImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service

public class ValidatUserServiceImp implements ValidateUserService {
	@Autowired
	ValidateUserRepo validrepo;
//	ValidateUserRepo validrepo =new ValidateUserRepoImp();
//	ValidateUserRepoImp validuserrepo;
	public LoginModel isValidateUser(LoginModel model) {
		return validrepo.isValidate(model);
		
		
	}

}
