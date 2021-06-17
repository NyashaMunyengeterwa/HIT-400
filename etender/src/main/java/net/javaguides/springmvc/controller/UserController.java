package net.javaguides.springmvc.controller;

import java.util.List;

import com.fasterxml.jackson.databind.ObjectMapper;
import net.javaguides.springmvc.entity.Login;
import net.javaguides.springmvc.entity.Organization;
import net.javaguides.springmvc.entity.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import net.javaguides.springmvc.exception.ResourceNotFoundException;
import net.javaguides.springmvc.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	ObjectMapper mapper = new ObjectMapper();

	private static final Logger LOG = LoggerFactory.getLogger(UserController.class);

	@Autowired
	private UserService userService;

	@GetMapping("/home")
	public String home(){
		return "home-page";
	}

	@GetMapping("/showForm")
	public String showFormForAddOrganization(Model theModel) {
		LOG.debug("inside show user-form handler method");
		Organization organization = new Organization();
		theModel.addAttribute("organization", organization);
		return "organization-form";
	}

	@GetMapping("/register")
	public String showFormForAddUser(Model theModel) {
		LOG.debug("inside show user-form handler method");
		User user = new User();
		theModel.addAttribute("user", user);
		return "user-form";
	}

	@GetMapping("/organisations")
	public String listOrganisations(Model theModel) {
		List<User> theUsers = userService.getUsers();
		theModel.addAttribute("users", theUsers);
		return "list-organisations";
	}

	@GetMapping("/{userId}")
	public User getUser(@PathVariable("userId") String userId)  {
		User user = userService.getUserById(userId);
		System.out.println("National Id" + user.getNationalId());
		System.out.println("Address one" );
		System.out.println("Address one" + user.getContactDetail());
		return user;
	}
	
	@PostMapping("/saveUser")
	public String saveUser(@ModelAttribute("user") User theUser, 	Model theModel)  {
		try {
			userService.saveUser(theUser);
			LOG.info("theUser.getId()"+theUser.getNationalId());
			theModel.addAttribute("user", theUser);
			return "user-contact-detail";

		}catch (Exception e){

			List<User> theUsers = userService.getUsers();
			theModel.addAttribute("users", theUsers);
			return "list-organisations";
		}
	}



	@PostMapping("/updateUser")
	public String updateUser(@ModelAttribute("user") User theUser, 	Model theModel)  {
		LOG.info("theUser.getId()"+theUser.getNationalId());

		userService.saveUser(theUser);
		return "redirect:/user/list";
	}

	@PostMapping("/saveDetail")
	public String saveDetail(@ModelAttribute("contactDetail") User theUser, 	Model theModel)  {
		userService.saveUser(theUser);
		//theModel.addAttribute("user", theUser);
		return "redirect:/user/list";
	}
	
	@GetMapping("/updateForm")
	public String showFormForUpdate(@RequestParam("userId") String theId,
									Model theModel) throws ResourceNotFoundException {
		User theUser = userService.getUser(theId);
		theModel.addAttribute("user", theUser);
		return "user-form";
	}
	
	@GetMapping("/delete")
	public String deleteUser(@RequestParam("userId") String theId) throws ResourceNotFoundException {
		userService.deleteUser(theId);
		return "redirect:/user/list";
	}

	@GetMapping("/login")
	public String login(Model theModel) {

		Login login = new Login();
		theModel.addAttribute("login", login);

		return "login-page";
	}





}
