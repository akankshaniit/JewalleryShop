package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@Autowired
	private HttpSession session;
	
	
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
	public ModelAndView ValidateCrendentials(@RequestParam("emailID") String id,@RequestParam("password") String pwd)
			{
		
		System.out.println("Validating..........");
		ModelAndView mv=new ModelAndView("/home");
		if(id.equals("niit@gmail.com")  && pwd.equals("niit"))
		{
		mv.addObject("msg","Valid Crendential" );	
		session.setAttribute("LoginMessage","Welcome:"+id);
		}
		else
		{
		mv.addObject("msg","Invalid Credential");
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
	
}
