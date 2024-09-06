package org.car.service;

import java.util.List;

import org.car.model.GenBillModel;
import org.car.model.ServicingModel;
import org.car.model.ServicingToBillModel;
import org.car.repository.ServicingRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ServicingService {
	@Autowired
	ServicingRepo repo;
	public void saveServicingDetails(ServicingModel servicingModel) {
        // Business logic for total price calculation if needed
        repo.save(servicingModel);
    }
	
	public List<ServicingToBillModel> getServicingToBillModel(int id){
		return repo.getServicingToBillModel(id);
	}
	public int isGenBill(GenBillModel model) {
		return repo.generateBill(model);
	}
}
