package erp.controllers.training;

import java.util.List;
import java.text.*;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.EmployeeBeans;
import erp.hrms.beans.FacilityBeans;
import erp.hrms.beans.FacilityListBeans;
import erp.hrms.beans.TrainerBeans;
import erp.hrms.beans.TrainerListBeans;
import erp.hrms.beans.TrainingAddBeans;
import erp.hrms.beans.Training_Course_beans;
import erp.hrms.beans.trainingdevbeans;
import erp.hrms.beans.trainingdevlist2beans;
import erp.hrms.beans.trainingdevlistbeans;
import erp.hrms.dao.trainingdao1;



@Controller
public class TrainingController1 {
	
	@Autowired
	trainingdao1 trainingDao; 
	
	
	@RequestMapping("training_mgt-training")
	public ModelAndView training() {	
		ModelAndView mav = new ModelAndView("training/add_training_course");
		
		List<FacilityBeans> facilitylist = trainingDao.getFacility();
		List<TrainerBeans> trainerlist = trainingDao.getTrainer();
		mav.addObject("facilitylist",facilitylist);
		mav.addObject("facilitybeans", new FacilityBeans());
		mav.addObject("trainerlist", trainerlist);
		mav.addObject("trainerbeans", new TrainerBeans());
		
		List<Training_Course_beans> traininglist = trainingDao.getTraining();
		mav.addObject("traininglist",traininglist);
		mav.addObject("Training_Course_beans", new Training_Course_beans());
		return mav;
	}
	
	
	
	
	
	
	@RequestMapping(value="course-submit", method= RequestMethod.POST)
	public ModelAndView course_save(@ModelAttribute("courseBean")Training_Course_beans courseBean) {	
		
		trainingDao.save(courseBean);
		return new ModelAndView("redirect:/training_mgt-training");
		
	
	}
	

	
	@RequestMapping(value="training-course-update", method= RequestMethod.POST)
	public ModelAndView course_update(@ModelAttribute("courseBean")Training_Course_beans courseBean) {	
		
		trainingDao.update_training_course(courseBean);
		return new ModelAndView("redirect:/training_mgt-training");
		
	
	}
	
	
	@RequestMapping(value="trainer-update", method= RequestMethod.POST)
	public ModelAndView trainer_update(@ModelAttribute("trainerBean")TrainerListBeans trainerBean) {	
		
		trainingDao.update_trainer(trainerBean);
		return new ModelAndView("redirect:/training_mgt-trainer");
	
	}

	@RequestMapping(value="facility-update", method= RequestMethod.POST)
	public ModelAndView facilty_update(@ModelAttribute("facilityBean")FacilityListBeans facilityBean) {	
		
		trainingDao.update_facility(facilityBean);
		return new ModelAndView("redirect:/training_mgt-facility");
	
	}	
	
	
	@RequestMapping(value="training-development")
	public ModelAndView training_development() {	
		ModelAndView mav = new ModelAndView("training/training_development");
		List<trainingdevbeans> trainingdev_List = trainingDao.gettrainingdevlist();
		List<trainingdevlistbeans> listEmp = trainingDao.gettraininigdevlistbeans();
		mav.addObject("trainingdev_List",trainingdev_List);
		List<trainingdevlistbeans> trainingDevList = trainingDao.gettraininigdevlistbeans();
		mav.addObject("trainingDevList", trainingDevList);
		List<trainingdevlist2beans> trainingDevList2 = trainingDao.gettraininigdevlist2beans();
		mav.addObject("trainingDevList2", trainingDevList2);
		mav.addObject("listEmp", listEmp);
		return mav;
	}

	
	//DISPLAYS DATA ON THE JSP FILE (list_of_manage_trainers.jsp)
	//START
	@RequestMapping("training_mgt-trainer")
	public ModelAndView trainer() {	
		ModelAndView mav = new ModelAndView("training/list_of_manage_trainers");
		List<TrainerListBeans> trainerList = trainingDao.getTrainerList();
		mav.addObject("trainerList", trainerList);
		return mav;

	}
	//END
	@RequestMapping("training_mgt-facility")
	public ModelAndView facility() {	
		ModelAndView mav = new ModelAndView("training/facility_management");
		List<FacilityListBeans> facilityList = trainingDao.getFacilityList();
		mav.addObject("facilityList", facilityList);
		return mav;
	}
	
	@RequestMapping(value= "trainer-submit",method= RequestMethod.POST)
	public ModelAndView trainer_save(@ModelAttribute("trainerBean")TrainerListBeans trainerBean) {	
		
		trainingDao.save_trainer(trainerBean);
		return new ModelAndView("redirect:/training_mgt-trainer");

	
	}	

	@RequestMapping(value= "facility-submit",method= RequestMethod.POST)
	public ModelAndView facility_save(@ModelAttribute("facilityBean")FacilityListBeans facilityBean) {	
		
		trainingDao.save_facility(facilityBean);
		return new ModelAndView("redirect:/training_mgt-facility");
	
	}	
	
	@RequestMapping(value= "add-training-employee",method= RequestMethod.POST)
	public ModelAndView facility_save(@ModelAttribute("trainingAddBean")TrainingAddBeans trainingAddBean) {	
		
		trainingDao.save_add_trainingDev(trainingAddBean);
		return new ModelAndView("redirect:/training-development");
	
	}
	
}