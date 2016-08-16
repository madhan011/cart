package com.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.ProductModel;
import com.service.ProductService;


@Controller
public class ProductController {

	@ModelAttribute("ob")
	public ProductModel construct(){
		return new ProductModel();
	}
	@Autowired(required=true)
	private ProductService productservice;
	
	@RequestMapping("/Prodview")
	public String setupForm(){
		return "Prodview";
	}
	
	@RequestMapping(value="/productmodel.do", method=RequestMethod.POST)
	public String doActions(@ModelAttribute("ob") ProductModel productmodel, BindingResult result, @RequestParam String action, Map<String, Object>map){
	    ProductModel productmodelResult = new ProductModel();
	    switch(action.toLowerCase()){
	    case "add":
	    	productservice.add(productmodel);
	    	productmodelResult = productmodel;
	    	break;
	    	
	    case "edit":
	    	productservice.edit(productmodel);
	    	productmodelResult = productmodel;
	    	break;
	    	
	    case "delete":
	    	productservice.delete(productmodel.getId());
	    	productmodelResult = new ProductModel();
	    	break;
	    	
	    case "search":
	    	ProductModel searchedProductModel = productservice.getProductModel(productmodel.getId());
	    	productmodelResult = searchedProductModel!=null ? searchedProductModel : new ProductModel();
	    	break;
	    }
	    map.put("productmodel",productmodelResult);
	    map.put("productmodelList", productservice.getAllProductModel());
	    
		return "Prodview";
	}
}
