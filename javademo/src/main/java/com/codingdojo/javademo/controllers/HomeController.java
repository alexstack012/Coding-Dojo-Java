package com.codingdojo.javademo.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.codingdojo.javademo.models.Car;
import com.codingdojo.javademo.models.LoginUser;
import com.codingdojo.javademo.models.User;
import com.codingdojo.javademo.services.CarService;
import com.codingdojo.javademo.services.UserService;

// @controller identifies the page
@Controller
public class HomeController {
	private UserService userServ; //calling in the service files then a variable name to refer to them as
	private CarService carServ;

	public HomeController(UserService userServ, CarService carServ) { //constructor
		this.userServ = userServ;
		this.carServ = carServ;
	}
	
	
	//render view for create car
	@GetMapping("/newCar")
	public String newCar(HttpSession session, Model model) {
		User user = userServ.findOneUser((Long)session.getAttribute("user_id"));
		model.addAttribute("user", user);
		model.addAttribute("car", new Car());
		return "newCar.jsp";
	}
	
	//post route to create
	@PostMapping("/createCar")
	public String createCar(@Valid @ModelAttribute("car")Car car, BindingResult result) {
		if(result.hasErrors()) {
			return"newCar.jsp";
		}
		//make sure we tie the user to the car
		carServ.createCar(car);
		return "redirect:/dashboard";
	}
	
	
	
	//render view for edit
	@GetMapping("/editCar/{id}")
	public String editCar(@PathVariable("id") Long id, @ModelAttribute("car") Car car, Model model, HttpSession session) {
		model.addAttribute("car", carServ.getOneCar(id)); //finding info for the car by id
		model.addAttribute("user", userServ.findOneUser ((Long)session.getAttribute("user_id"))); //finding info from the user id tied to the car
		return "editCar.jsp";
	}
	
	//post route to update
	@RequestMapping(value="/update/{id}", method=RequestMethod.POST)
	public String updatingCar(@Valid @PathVariable("id")Long id, @ModelAttribute("car")Car car, BindingResult result) {
		if(result.hasErrors()) {
			return"editCar.jsp";
		}
		carServ.updateCar(car);
		return "redirect:/dashboard";
	}
	
	
	
	//Render page to view one car
	@GetMapping("/oneCar/{id}")
	public String oneCar(@PathVariable("id")Long id, Model model, HttpSession session) {
		model.addAttribute("car",carServ.getOneCar(id)); // getting one car's info and sending it to the JSP
		model.addAttribute("user", userServ.findOneUser((Long) session.getAttribute("user_id"))); //getting the user in session and sending that to the JSP
		if(session.getAttribute("user_id") == null) {
			return "redirect:/";			
		} else {
			return "oneCar.jsp";
		}
	}
	
	@RequestMapping(value="/car/{id}/delete")
	public String deleteCar(@PathVariable("id")Long id, Model model) {
		this.carServ.deleteCar(id);
		return "redirect:/dashboard";
	}
	
	//#################################################################################################
	//########################      START OF LOGIN AND REG       ######################################
	//#################################################################################################

	@RequestMapping("/")
	public String index(HttpSession session, Model model) {
		model.addAttribute("newUser", new User()); 
		model.addAttribute("newLogin", new LoginUser());
		return "index.jsp";
	}

	@GetMapping("/dashboard")
	public String home(HttpSession session, Model model) {
		//check if "user_id" is not in session
		if(session.getAttribute("user_id") == null) {
			return "redirect:/";			
		} else {
			//This sends our User info to the JSP
			model.addAttribute("user", userServ.findOneUser((Long) session.getAttribute("user_id")));
			//This sends our "allCars" info to the jsp
			model.addAttribute("allCars", carServ.getAllCars());
			return "dashboard.jsp";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		//clears the session signing out the user then redirecting to login page
		session.invalidate();
		return "redirect:/";
	}
	
	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("newUser")User newUser, 
			BindingResult result, Model model, HttpSession session) {
		//first we call on our service method register to check if the email is in session
		userServ.register(newUser,  result);
		if(result.hasErrors()) {
			model.addAttribute("newLogin", new LoginUser());
			return "index.jsp";
		}
		//setting our user_id into session
		session.setAttribute("user_id", newUser.getId());
		return "redirect:/dashboard";		
		}
	@PostMapping("/login")
	public String login (@Valid @ModelAttribute("newLogin") LoginUser newLogin, BindingResult result,
			Model model, HttpSession session) {
		User user = userServ.login(newLogin, result);
		if(result.hasErrors()) {
			model.addAttribute("newLogin", new User());
			return "index.jsp";
	}
		session.setAttribute("user_id", user.getId());
		return "redirect:/dashboard";
	}

}