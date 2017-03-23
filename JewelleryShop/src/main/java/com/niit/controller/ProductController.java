package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.model.Category;
import com.niit.model.Product;

@Controller
public class ProductController {

	@Autowired
	private ProductDAO productDao;
	@Autowired
	CategoryDAO categoryDao;
	
	@RequestMapping(value="/Admin/create_product",method=RequestMethod.POST)
	public ModelAndView createProduct(HttpServletRequest request,@ModelAttribute("prd") @Validated Product product,BindingResult result, Model model){
		
	System.out.println(product.getName());
		ModelAndView mv = new ModelAndView("/Admin/product");
		if (result.hasErrors()) {
			
				System.out.println(result);
			
		} else {
			product.setImage(product.getFile().getOriginalFilename());
			productDao.storeFile(product,request);
		productDao.save(product);
		
		mv.addObject("msg","product added Successfully");
		
		}
List<Product> productList= productDao.list();
mv.addObject("productList", productList);
mv.addObject("catList", categoryDao.list());
		return mv;
		
	}

	@RequestMapping(value="/Admin/manage_product_edit/{id}",method=RequestMethod.GET)
	public ModelAndView editProduct(@PathVariable("id") String id){
		ModelAndView mv = new ModelAndView("/Admin/product");
		Product pt=productDao.getProductByID(id);
		List<Product> productList= productDao.list();
		
		mv.addObject("productList", productList);
		mv.addObject("catList", categoryDao.list());
		mv.addObject("prd",pt); 
		mv.addObject("editing",true);
		return mv;
				
		
		
	}
	

	@RequestMapping(value="Admin/product_edit",method=RequestMethod.POST)
	public ModelAndView editProduct(HttpServletRequest request,@ModelAttribute("prd") @Validated Product pt
			, BindingResult result, Model model){
	
		ModelAndView mv = new ModelAndView("/Admin/product");
		if (result.hasErrors()) {
			

			
		} else {
			pt.setImage(pt.getFile().getOriginalFilename());
			productDao.storeFile(pt,request);
		productDao.update(pt);
		
		mv.addObject("msg","Product updated Successfully");
		
		}
List<Product> productList= productDao.list();
mv.addObject("productList", productList);
		return mv;
		
		
		
	}
	
	@RequestMapping("/Admin/product_delete/{id}")
//	public ModelAndView deleteCategory(@PathVariable("id") String id, Model model) throws Exception {
	public ModelAndView deleteProduct(@PathVariable("id") String id, Model model) throws Exception {

		ModelAndView mv = new ModelAndView("/Admin/product");
			boolean flag=productDao.delete(id);
		if(flag = true)
		mv.addObject("msg","Product Deleted Successfully");
		else
			mv.addObject("msg","Product not Deleted");
		
List<Product> productList= productDao.list();
mv.addObject("productList", productList);
mv.addObject("catList", categoryDao.list());
mv.addObject("prd",new Product());
		return mv;
		
	}
/*	
	@RequestMapping(value="/showproduct")
	public ModelAndView showAll(){
		System.out.println("show all pages");
		List<Product> lt = productDao.list();
		ModelAndView md = new ModelAndView("showAll","prdList",lt);
		return md;
	}	
*/
	
	
	@RequestMapping(value="/showproduct/{id}")
	public ModelAndView showProduct(@PathVariable("id") String id){
		ModelAndView mv = new ModelAndView("/showAll");
		Product pt=productDao.getProductByID(id);
		mv.addObject("product",pt); 
		return mv;
				
	}
	
	

		
		
	
	
	}
	

