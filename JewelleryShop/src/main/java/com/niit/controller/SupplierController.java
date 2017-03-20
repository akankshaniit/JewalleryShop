package com.niit.controller;

import java.util.List;

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


import com.niit.dao.SupplierDAO;
import com.niit.model.Category;
import com.niit.model.Supplier;



@Controller
public class SupplierController {

	@Autowired
	private SupplierDAO supplierDao;
	
	@RequestMapping(value="/Admin/create_suppliers",method=RequestMethod.POST)
	public ModelAndView createCategory(@ModelAttribute("sup") @Validated Supplier supplier,BindingResult result, Model model){
		
		
		ModelAndView mv = new ModelAndView("/Admin/supplier");
		if (result.hasErrors()) {
			

			
		} else {
		supplierDao.save(supplier);
		
		mv.addObject("msg","Category added Successfully");
		
		}
List<Supplier> supplierList= supplierDao.list();
mv.addObject("supplierList", supplierList);
		return mv;
		
	}
	
	

	@RequestMapping(value="/Admin/manage_supplier_edit/{id}",method=RequestMethod.GET)
	public ModelAndView editCategory(@PathVariable("id") String id){
		ModelAndView mv = new ModelAndView("/Admin/supplier");
		Supplier st=supplierDao.getSupplierByID(id);
		List<Supplier> supplierList= supplierDao.list();
		
		mv.addObject("supplierList", supplierList);
		
		mv.addObject("sup",st); 
		mv.addObject("editing",true);
		return mv;
				
		}
	
	
	@RequestMapping(value="Admin/supplier_edit",method=RequestMethod.POST)
	public ModelAndView editCategory(@ModelAttribute("sup") @Validated Supplier st
			, BindingResult result, Model model){
	
		ModelAndView mv = new ModelAndView("/Admin/supplier");
		if (result.hasErrors()) {
			

			
		} else {
		supplierDao.update(st);
		
		mv.addObject("msg","Supplier updated Successfully");
		
		}
List<Supplier> supplierList= supplierDao.list();
mv.addObject("supplierList", supplierList);
		return mv;
		
		
		
	}

	@RequestMapping("/Admin/supplier_delete/{id}")
//	public ModelAndView deleteCategory(@PathVariable("id") String id, Model model) throws Exception {
	public ModelAndView deleteSupplier(@PathVariable("id") String id, Model model) throws Exception {

		ModelAndView mv = new ModelAndView("/Admin/supplier");
			boolean flag=supplierDao.delete(id);
		if(flag = true)
		mv.addObject("msg","supplier Deleted Successfully");
		else
			mv.addObject("msg","supplier not Deleted");
		
List<Supplier> supplierList= supplierDao.list();
mv.addObject("supplierList", supplierList);
mv.addObject("sup",new Supplier());
		return mv;
		
	}
	
	
	
	

	
	
}
