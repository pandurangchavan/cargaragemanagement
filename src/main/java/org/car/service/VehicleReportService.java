package org.car.service;


import org.car.model.MonthlyIncomeModel;
import org.car.model.VehicleReportModel;
import org.car.repository.ReportsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VehicleReportService {

@Autowired
   ReportsRepository repo;

    public List<VehicleReportModel> getMonthlyVehicleReport(int month, int year) {
        return repo.getMonthlyVehicleReport(month, year);
    }
    public MonthlyIncomeModel getMonthlyIncome(int month, int year) {
    	return repo.getMonthlyIncome(month, year);
    }
}
