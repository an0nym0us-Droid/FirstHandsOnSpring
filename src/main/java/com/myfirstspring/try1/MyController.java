package com.myfirstspring.try1;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MyController {
	
	
//	@Autowired private PizzaDAO pizzaDAO;
	
@Autowired private CategoryDAO categoryDAO;
	
	@RequestMapping(value="/index",method = RequestMethod.GET)
	public String list(Model model) {
		
		getMyResults(model,1);
		return "mainview";
	}
	@RequestMapping(value="/a",method = RequestMethod.POST)
	public String getMyProducts(@RequestParam("myselect") Integer sel, Model model) {
		getMyResults(model,sel);
		return "mainview";
	}
	
	public void getMyResults(Model model, Integer sel){
		List<Category> categories = categoryDAO.findAll();
		Category category = categories.get(sel-1);
		List<Product> products = category.getProducts();
		model.addAttribute("categories", categories);
		model.addAttribute("products", products);
		model.addAttribute("selName",category.getCategoryName());
		model.addAttribute("selId",category.getCategoryId());
	}
	
}
