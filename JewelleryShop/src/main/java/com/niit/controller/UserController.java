package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.UserDAO;
import com.niit.dao.UserDAO;
import com.niit.model.Contact;
import com.niit.model.User;

@Controller
public class UserController {
	
	@Autowired
	private UserDAO userDAO;
	

	@Autowired
	private User user;
	
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping("/validate")
	public ModelAndView validateCredentials(@RequestParam("mail") String userID, 
			@RequestParam("password") String pwd)
	{
		
		
		//Actually you have get the data from DB
		//Tempororily  -user->niit password =niit@123
		
		ModelAndView mv = new ModelAndView("/home");
		
		if( userDAO.validate(userID, pwd)==true)
		
		{
			user = userDAO.getUser(userID);
			
			if(user.getRole().equals("Admin"))
			{
				mv.addObject("role", "Admin");
			}
			else
			{
				mv.addObject("role", "User");
			}
			
			mv.addObject("successMessage", "Valid Credentials");
			session.setAttribute("loginMessage", "Welcome :" +userID);
		}
		else
		{
			mv.addObject("errorMessage", "InValid Credentials...please try again");
		}
		
		return mv;
		
	}
	
	
	
	
	
	

	@RequestMapping(value="/create_user",method=RequestMethod.POST)
	public ModelAndView userUs(@ModelAttribute("user") @Validated User user,BindingResult result, Model model){
		
		System.out.println("hii");
		ModelAndView mv = new ModelAndView("/login");
		if (result.hasErrors()) {
			

			
		} else {
		
			user.setRole("USER");
		boolean created=userDAO.save(user);
		if(created)
		mv.addObject("msg","User Register Successfully");
		else
			mv.addObject("msg","User already Exists");
		
		}
List<User> userList= userDAO.list();
mv.addObject("userList", userList);
		return mv;
		
	}
	
	
}
