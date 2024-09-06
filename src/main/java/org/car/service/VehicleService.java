package org.car.service;

import java.util.List;

import org.car.model.VehicleModel;
import org.car.repository.VehicleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VehicleService {
	@Autowired
	VehicleRepository repo;
	public int isAddVehicle(VehicleModel model) {
		return repo.isAddVehicle(model);
	}
	public List<VehicleModel> getVehicleCust(int id){
		return repo.getVehicles(id);
	}
	public int getVehicleId() {
		return repo.getVehicleId();
	}
}
