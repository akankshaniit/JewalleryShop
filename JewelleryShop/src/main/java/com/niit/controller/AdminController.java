package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.SupplierDAO;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;

@Controller
public class AdminController {
	
	@Autowired
	CategoryDAO categoryDao;
	
	@Autowired
	SupplierDAO supplierDao;
	
	@Autowired
	ProductDAO productDao;
	
	
	
	
	@RequestMapping("/Admin/manage_category")
	public ModelAndView manageCategory()
	{
		System.out.println("ManageCategories");
		//List<Category> ct = categoryDao.list();

		
		
		
		ModelAndView mv=new ModelAndView("/Admin/category");
		mv.addObject("isUserClickedCategories","true");
		
		List<Category> categoryList= categoryDao.list();
		
		mv.addObject("categoryList", categoryList);
		
		mv.addObject("cat",new Category());     //To access the category domain in category */
		
return mv;
		
	}

	@RequestMapping("/Admin/manage_products")
	public ModelAndView manageProducts()
	{
		System.out.println("ManageProduct");
		ModelAndView mv=new ModelAndView("/Admin/product");
		mv.addObject("isUserClickedproducts","true");
		
       List<Product> productList= productDao.list();
		
		mv.addObject("productList", productList);
		mv.addObject("prd",new Product());   
		mv.addObject("catList", categoryDao.list());
		
		return mv;
		
	}
	@RequestMapping("/Admin/manage_suppliers")
	public ModelAndView manageSuppliers()
	{
		System.out.println("ManageSppliers");
		ModelAndView mv=new ModelAndView("/Admin/supplier");
		mv.addObject("isUserClickedSuppliers","true");
		
        List<Supplier> supplierList= supplierDao.list();
		
		mv.addObject("supplierList", supplierList);
		mv.addObject("sup",new Supplier());    
		
		return mv;
		
	}

}
