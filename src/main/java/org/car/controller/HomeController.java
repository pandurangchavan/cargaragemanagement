package org.car.controller;
import org.car.service.*;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
//aa
import javax.servlet.http.HttpSession;

import org.car.model.AccessoriesModel;
import org.car.model.BillModel;
import org.car.model.CustomerModel;
import org.car.model.GenBillModel;
import org.car.model.LoginModel;
import org.car.model.MonthlyIncomeModel;
import org.car.model.ServiceModel;
import org.car.model.ServicingModel;
import org.car.model.ServicingToBillModel;
import org.car.model.SubServiceModel;
import org.car.model.VehicleModel;
import org.car.model.VehicleReportModel;
import org.car.service.CustomerService;
import org.car.service.ValidateUserService;
import org.car.service.VehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String homePage() {
		return "indexcust";
	}

	@RequestMapping("/login")
	public String LoginPage() {
		return "index";
	}

	int user_id;
	@Autowired
	CustomerService custService;
	@Autowired
	ValidateUserService validService;

	@RequestMapping("wel")
	public String getWelcome(LoginModel model, HttpSession session) {
		validService.isValidateUser(model);
		if (model.getLoginType().equals("super admin")) {
//			return "superadmindashjsp";
			return "adminhead";
		} else if (model.getLoginType().equals("customer")) {
			user_id = model.getUser_id();
			System.out.println(user_id);
			session.setAttribute("user_id", user_id);
			String name = custService.getCustomerName(user_id);
			session.setAttribute("cust_name", name);
			System.out.println(user_id);
			List lst = custService.getAllServicingDetails(user_id);
			System.out.println(lst);
//			session.setAttribute("vehicle_id", vservice.getVehicleId());
			return "indexcust";
		} else {
			return "index";
		}
	}

	@RequestMapping("regCust")
	public String RegisterCust() {
		return "regcust";
	}

	@RequestMapping("vehicle")
	public String vehicleOp() {
		return "vehicle";
	}

	@RequestMapping("/vsDetails")
	public String ViewAllServicingDetails(Map map, HttpSession session) {
		System.out.println(this.user_id);
		user_id = (int) session.getAttribute("user_id");
		System.out.println(user_id);
		List lst = custService.getAllServicingDetails(user_id);
		System.out.println(lst);
		map.put("sdetails", lst);
		return "vsdetails";
	}

	@RequestMapping("getBill")
	public String getBill(HttpSession session, Map map) {
		user_id = (int) session.getAttribute("user_id");
		System.out.println(user_id);
		List lst = custService.getBill(user_id);
		System.out.println(lst);
		map.put("billDetails", lst);
		return "bill";
	}

//@RequestMapping("getBill")
//public String getBill(HttpSession session, Map<String, Object> map) {
//    int user_id = (int) session.getAttribute("user_id");
//    System.out.println(user_id);
//    
//    List<BillModel> lst = custService.getBill(user_id);
//    System.out.println(lst);
//    
//    map.put("billDetails", lst);
//    return "bill"; // This returns the view name (bill.jsp)
//}
	@Autowired
	VehicleService vservice;
	
	
	@Autowired
	ServiceService serviceservice;

	@RequestMapping("saveVehicleDetails")
	public String saveVehicle(VehicleModel model, HttpSession session, Map map) {
		user_id = (int) session.getAttribute("user_id");
		System.out.println(user_id);
		model.setCustomerID(user_id);
		int val = vservice.isAddVehicle(model);
		if (val > 0) {
			map.put("msg", "Vehicle Added SuccesFully");
		} else {
			map.put("msg", "Vehicle Not Added");
		}
		System.out.println(model);
		return "vehicle";
	}

//	@RequestMapping("viewVehicle")
//	public String viewVehicle(Map map,HttpSession session) {
//		user_id=(int) session.getAttribute("user_id");
//		List lst=vservice.getVehicleCust(user_id);
//		System.out.println(lst);
//		
//		return null;
//		
//	}
	@RequestMapping("viewVehicle")
	public String viewVehicle(Map<String, Object> map, HttpSession session) {
		int user_id = (int) session.getAttribute("user_id");
		List<VehicleModel> lst = vservice.getVehicleCust(user_id);
		map.put("vehicleList", lst); // Add the list to the map
		session.setAttribute("vehicle_id", vservice.getVehicleId());
		return "vehicle"; // Return the name of the JSP page to be rendered
	}

	@RequestMapping("savee")
	public String saveCustomer(CustomerModel model, Map msg) throws SQLException {
		System.out.println(model);

		boolean b = custService.isAddCustomer(model);
		if (b) {
			msg.put("msg", "Register Succefull....");
		} else {
			msg.put("msg", "CRegistration Failed...");
		}
		return "regcust";
		// return "superadmindashjsp";

	}
	@RequestMapping("addviewcust")
	public String addviewcust() {
		return "addviewcust";
	}

	@RequestMapping("save")
	public String saveCust(CustomerModel model, Map msg) throws SQLException {
		System.out.println(model);

		boolean b = custService.isAddCustomer(model);
		if (b) {
			msg.put("msg", "Customer Added....");
		} else {
			msg.put("msg", "Customer Not Added...");
		}
		
//	return "regcust";
//		return "superadmindashjsp";
		return "addviewcust";

	}
	
//	@RequestMapping("/viewCustomer")
//	public String viewCustomer(Model model) {
//	    List<CustomerModel> customers = custService.GetAllCustomers();
//	    model.addAttribute("custList", customers);
//	    return "viewCust";
//	}

	@RequestMapping("/viewCustomer")
	public String getAllDepartment(Map map) {
		List<CustomerModel> list = this.custService.GetAllCustomers();
		map.put("custList", list);
////		return "superadmindashjsp";
//		return "addviewcust";
	return "viewCust";
	}

	@RequestMapping("deleteCustById")
	public String deleteEmployeeById(@RequestParam("custid") Integer custid, Map map) throws SQLException {
		System.out.println("Cust id is" + custid);
		boolean b = custService.isDeleteCustomer(custid);
		List<CustomerModel> list = this.custService.GetAllCustomers();
		map.put("custList", list);
		return "viewCust";
	}
	@RequestMapping("viewService")
	public String showAllServices(Map map)
	{
		List<ServiceModel> list=serviceservice.getAllServices();
		System.out.println(list);
		map.put("serviceList", list);
		return "showService";
	}
	@RequestMapping("addService")
	public String AddService() {
		return "addService";
	}
	@RequestMapping("showSubServices")
	public String showAllSubServices(Map map) {
		List<SubServiceModel> list=serviceservice.getAllSubServices();
		System.out.println(list);
		map.put("subservice", list);
		return "showsub";
	}
	@RequestMapping("showacc")
	public String showAcc(Map map) {
		List<AccessoriesModel> list=serviceservice.getAllAccessories();
		System.out.println(list);
		map.put("showac", list);
		return "showacc";
	}
	@RequestMapping("bookService")
	public String bookService(Map map) {
		List<ServiceModel> list=serviceservice.getAllServices();
		System.out.println(list);
		map.put("serviceList", list);
		List<SubServiceModel> list1=serviceservice.getAllSubServices();
		System.out.println(list1);
		map.put("subservice", list1);
		List<AccessoriesModel> list2=serviceservice.getAllAccessories();
		System.out.println(list2);
		map.put("showac", list2);
		return "servicing";
	}
	@Autowired
	ServicingService servicingService;
	@RequestMapping("submitServiceDetails")
	public String submitServiceDetails( ServicingModel servicingModel,HttpSession session) {
		int vehicleid=(int) session.getAttribute("vehicle_id");
		servicingModel.setVehicleID(vehicleid);
		servicingModel.setServiceDate(new Date(System.currentTimeMillis()));
		servicingService.saveServicingDetails(servicingModel);
        // Calculate total price if needed (depends on business logic)
	 System.out.println(servicingModel);
//        servicingService.saveServicingDetails(servicingModel);
        return "suc";
    }
	@RequestMapping("generateBill")
	public String generateBill(HttpSession session,Map msg) {
		int vehicleid=(int) session.getAttribute("vehicle_id");
		List<ServicingToBillModel> list=servicingService.getServicingToBillModel(vehicleid);
		System.out.println(list);
		double discount;
		double finalAmount;
		int totalVisits;
		GenBillModel bill =new GenBillModel();
		 for (ServicingToBillModel model : list) {
			 	bill.setServicingID(model.getServicingID());
			 	bill.setBillDate(model.getServiceDate());
			 	totalVisits=model.getTotalVisits();
			 	if(totalVisits==1) {
			 		discount=model.getTotalPrice()*0.1;
			 	}
			 	else if(totalVisits >= 5) {
			 		discount=model.getTotalPrice()*0.15;
			 	}
			 	else {
			 		discount=0.0;
			 	}
			 	bill.setTotalAmount(model.getTotalPrice());
			 	bill.setDiscountApplied(discount);
			 	finalAmount=model.getTotalPrice()-discount;
			 	bill.setFinalAmount(finalAmount);
	        }
		int val= servicingService.isGenBill(bill);
		if(val>0) {
			msg.put("msg","Bill Generated");
		}
		else {
			msg.put("msg","Bill Not GEnerated");
		}
//		System.out.println(list.get(vehicleid));
		return "custprof";
		
	}
//	 @PostMapping("/submitServiceDetails")
//	    public ModelAndView submitServiceDetails(@ModelAttribute("serviceDetailsForm") ServicingModel servicingModel) {
//	        // Calculate total price if needed (depends on business logic)
//		 System.out.println(servicingModel);
////	        
//	        return new ModelAndView("redirect:/success");
//	    }
	@RequestMapping("saveService")
	public String saveService(ServiceModel model,Map msg) {
		int val=serviceservice.isAddService(model);
		if(val>0) {
			msg.put("msg", "Service Added");
		}
		else {
			msg.put("msg","Service Not Added");
		}
		return "addService";
		
	}
	@RequestMapping("adminhead")
	public String adminHead() {
		return "adminhead";
	}

	@RequestMapping("custProf")
	public String custProfile() {

		return "custprof";
	}
	@Autowired
	VehicleReportService vehicleReportService;
	@RequestMapping("vehiclemonth")
	public String getVehiclemonth() {
		return "vehiclemonth";
	}
	 @RequestMapping("/vehicleReport")
	    public String getMonthlyVehicleReport(@RequestParam("month") int month,
	                                          @RequestParam("year") int year, Model model) {
	        List<VehicleReportModel> reportList = vehicleReportService.getMonthlyVehicleReport(month, year);
	        model.addAttribute("reportList", reportList);
	        return "vehicleReport";
	    }
	 @RequestMapping("incomemonth")
	 public String getIncomeMonth() {
		 return "incomemonth";
	 }
	 @RequestMapping("/monthlyIncome")
	    public String viewMonthlyIncome(@RequestParam("month") int month, @RequestParam("year") int year, Model model) {
	        MonthlyIncomeModel income = vehicleReportService.getMonthlyIncome(month, year);
	        model.addAttribute("income", income);
	        model.addAttribute("month", month);
	        model.addAttribute("year", year);
	        return "monthlyIncome";
	    }
}
