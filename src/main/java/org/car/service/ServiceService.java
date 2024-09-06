package org.car.service;

import java.util.List;

import org.car.model.AccessoriesModel;
import org.car.model.ServiceModel;
import org.car.model.SubServiceModel;
import org.car.repository.ServiceRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ServiceService {
	@Autowired
	ServiceRepo repo;
	public List<ServiceModel> getAllServices(){
		return repo.getAllServices();
	}
	public int isAddService(ServiceModel model) {
		return repo.isAddService(model);
	}
	public List<SubServiceModel> getAllSubServices(){
		return repo.getAllSubServices();
	}
	public List<AccessoriesModel> getAllAccessories(){
		return repo.getAllAccessories();
	}
}
