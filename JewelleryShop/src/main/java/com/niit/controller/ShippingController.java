package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.DebitCardDAO;
import com.niit.dao.ShippingDAO;
import com.niit.model.DebitCard;
import com.niit.model.Shipping;


@Controller
public class ShippingController {
	@Autowired
	private ShippingDAO shippingDAO;
	

	@Autowired
	private Shipping shipping;
	
	@Autowired
	private DebitCard debitcard;
	
	@Autowired
	private DebitCardDAO debitcardDAO;
	
	@Autowired
	private HttpSession session;

	@RequestMapping(value="/shipping_address",method=RequestMethod.POST)
	public ModelAndView ship(@ModelAttribute("shipping") @Validated Shipping shipping,BindingResult result, Model model){
		
		System.out.println("hii");
		ModelAndView mv = new ModelAndView("/shipping");
		
	
		
		String loggedInUserid = (String) session.getAttribute("loggedInUserID");
		if (loggedInUserid == null) {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			loggedInUserid = auth.getName();
		}
		
		
		// get the logged-in user id
		
		System.out.println(loggedInUserid);
		shipping.setUsername(loggedInUserid);
		
		if (result.hasErrors()) {
			

			
		} else {
			
		shippingDAO.save(shipping);
		
		mv.addObject("msg","User Send Address Successfully");
		
		}
List<Shipping> shippingList= shippingDAO.list();
mv.addObject("shippingList", shippingList);
		return mv;
		
	}
	
	
	@RequestMapping(value="/card_details" ,method=RequestMethod.POST)
	public ModelAndView paymode(@ModelAttribute("debitcard") @Validated DebitCard debitcard,BindingResult result, Model model)
	{
		
ModelAndView mv = new ModelAndView("/cart_checkout");
		
	
		
		String loggedInUserid = (String) session.getAttribute("loggedInUserID");
		if (loggedInUserid == null) {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			loggedInUserid = auth.getName();
		}
		
		
		// get the logged-in user id
		
		System.out.println(loggedInUserid);
		debitcard.setUsername(loggedInUserid);
		
		if (result.hasErrors()) {
			

			
		} else {
			
		debitcardDAO.save(debitcard);
		
		mv.addObject("msg","User Send Payment Details Successfully");
		
		}
List<DebitCard> debitcardList= debitcardDAO.list();
mv.addObject("debitcardList", debitcardList);
		return mv;
		
	}	

}
