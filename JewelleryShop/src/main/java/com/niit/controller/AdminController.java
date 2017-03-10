package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;

@Controller
public class AdminController {
	
	@Autowired
	CategoryDAO categoryDao;
	
	
	@RequestMapping("/manage_category")
	public ModelAndView manageCategory()
	{
		System.out.println("ManageCategories");
		//List<Category> ct = categoryDao.list();

		ModelAndView mv=new ModelAndView("category");
		mv.addObject("isUserClickedCategories","true");
		
		//something i have to add please check notebook
		return mv;
		
	}

	@RequestMapping("/manage_product")
	public ModelAndView manageProducts()
	{
		System.out.println("ManageProduct");
		ModelAndView mv=new ModelAndView("adminhome");
		mv.addObject("isUserClickedCategories","true");
		
		//something i have to add please check notebook
		return mv;
		
	}
	@RequestMapping("/manage_suppliers")
	public ModelAndView manageSuppliers()
	{
		System.out.println("ManageSppliers");
		ModelAndView mv=new ModelAndView("adminhome");
		mv.addObject("isUserClickedCategories","true");
		
		//something i have to add please check notebook
		return mv;
		
	}

}
