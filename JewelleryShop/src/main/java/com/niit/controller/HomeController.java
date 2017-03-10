package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.UserDAO;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.User;

@Controller
public class HomeController {
	
	@Autowired
	private HttpSession session;
	@Autowired
	ProductDAO productDao;
	@Autowired
	UserDAO userDAO;
	//@Autowired
	//User user;
	@Autowired
	CategoryDAO categoryDao;
	
	
	@RequestMapping("/")
	public ModelAndView home()
	{
		
		System.out.println("Starting page homepage");
		ModelAndView mv=new ModelAndView("home");
		mv.addObject("isUserClickedHome","true");
		return mv;
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public ModelAndView showlogin()
	{

		//specify which page you have to navigation
		ModelAndView mv=new ModelAndView("login");
		
		return mv;
	
	}
	
	@RequestMapping("/contact")
	public ModelAndView showcontact()
	{

		//specify which page you have to navigation
		ModelAndView mv=new ModelAndView("contact");
		
		return mv;
	
	}
	
	@RequestMapping("/about")
	public ModelAndView showaboutus()
	{
		//specify which page you have to navigation
		ModelAndView mv=new ModelAndView("about");
		
		return mv;
	}
	
	@RequestMapping("/register")
	public ModelAndView showregister()
	{
		//specify which page you have to navigation
		ModelAndView mv=new ModelAndView("register");
		
		return mv;
	}
	
	@RequestMapping(value="/validate",method=RequestMethod.POST)
	public ModelAndView ValidateCrendentials(@RequestParam("mail") String mail,@RequestParam("password") String pwd)
			{
		
		System.out.println("Validating..........");
		User user=userDAO.getUser(mail);
		//User user=userDAO.getUser(pwd);
		
		ModelAndView mv=new ModelAndView( "/home","valid",user);
		if(userDAO.validate(mail, pwd)==true)
		{
          user = userDAO.getUser(mail);
			
			if(user.getRole().equals("ADMIN"))
			{
				mv.addObject("role", "Admin");
			}
			else
			{
				mv.addObject("role", "Customer");
			}
			
			mv.addObject("successMessage", "Valid Credentials");
			session.setAttribute("loginMessage", "Welcome :" +mail);
		}
		else
		{
			mv.addObject("errorMessage", "InValid Credentials...please try again");
		}
		
		return mv;
		
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout()
	{
		ModelAndView mv = new ModelAndView("/home");
		session.invalidate();
        return mv;
	}
	
	@RequestMapping("/mycart")
	public ModelAndView mycart()
	{
	ModelAndView mv=new ModelAndView("/home");
			return mv;
	}
	
	@RequestMapping(value="/showAll")
	public ModelAndView showAll(){
		List<Product> lt = productDao.list();
		ModelAndView md = new ModelAndView("showAll","prdList",lt);
		return md;
	}
		
	@RequestMapping("/adminhome")
	public ModelAndView myadmin()
	{
		
	ModelAndView mv=new ModelAndView("adminhome");
			return mv;
	}
	
	@RequestMapping(value="/category")
	public ModelAndView category(){
		List<Category> ct = categoryDao.list();
		ModelAndView md = new ModelAndView("category","catList",ct);
		return md;
	}
	
	
}
