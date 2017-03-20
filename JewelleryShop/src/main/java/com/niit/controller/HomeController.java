package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ContactDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.SupplierDAO;
import com.niit.dao.UserDAO;
import com.niit.model.Category;
import com.niit.model.Contact;
import com.niit.model.Product;
import com.niit.model.Supplier;
import com.niit.model.User;

@Controller
public class HomeController {
	
	Logger log = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private HttpSession session;
	@Autowired
	ProductDAO productDao;
	@Autowired
	UserDAO userDAO;
	@Autowired
	User user;
	@Autowired
	CategoryDAO categoryDao;
	@Autowired
	SupplierDAO supplierDao;
	@Autowired
	ContactDAO contactDao;
	
	
	
	@RequestMapping("/")
	public ModelAndView home()
	{
		
		log.debug("Starting of the method home");
		ModelAndView mv=new ModelAndView("home");
		mv.addObject("isUserClickedHome","true");
		log.debug("Ending of the method home");
		return mv;
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public ModelAndView showlogin()
	{
		log.debug("Starting of the method login");
		//specify which page you have to navigation
		System.out.println("display login page");
		ModelAndView mv=new ModelAndView("login");
		mv.addObject("user", user);
		mv.addObject("isUserClickedLoginHere", "true");
		log.debug("Ending of the method login");
		return mv;
	
		

		
		
	}
	
	@RequestMapping("/contact")
	public ModelAndView showcontact()
	{

		//specify which page you have to navigation
		ModelAndView mv=new ModelAndView("contact");
		mv.addObject("contact",new Contact());
		mv.addObject("isUserClickedContact", "true");
		return mv;
	
	}
	
	@RequestMapping("/about")
	public ModelAndView showaboutus()
	{
		//specify which page you have to navigation
		ModelAndView mv=new ModelAndView("about");
		
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
		System.out.println("show all pages");
		List<Product> lt = productDao.list();
		ModelAndView md = new ModelAndView("showAll","prdList",lt);
		return md;
	}
		
	@RequestMapping("/Admin/adminhome")
	public ModelAndView myadmin()
	{
		
	ModelAndView mv=new ModelAndView("/Admin/adminhome");
			return mv;
	}
	
	
	
	
	
}
