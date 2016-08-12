package com.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import com.model.Newuser;
import com.model.User;
import com.service.LoginService;
import com.service.RegisterService;

@Controller
public class Homecontroller {
	@Autowired
	LoginService ls;
	@Autowired
	RegisterService rs;

	@RequestMapping(value = { "/", "/home" })
	public String home() {
		return "index";
	}



	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String getlogin() {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginuser(@RequestParam("name") String name, @RequestParam("pwd") String pwd) {
		boolean isvaliduser =false;
		User u=new User();
		u.setName(name);
		u.setPassword(pwd);
		isvaliduser =ls.checkUser(u);
		ModelAndView mv=new ModelAndView("index");
		if(isvaliduser==true)
		{
		mv.addObject("msg", "hello welcome");
		mv.addObject("name", u.getName());
		}
		return mv;
		}


	@RequestMapping(value = "/headphones")
	public String cat1() {
		return "Headphones";
	}
	@ModelAttribute("Registration")
	public Newuser getNewuser() {
		return new Newuser();
	}
	@RequestMapping(value = "/register")
	public String gtReg() {
		return "registration";
	}

	@RequestMapping(value = "/fregister", method = RequestMethod.POST)
	public ModelAndView reguser(@ModelAttribute("Registration") Newuser newuser) {
		System.out.println(newuser);
		rs.s(newuser);
		
		ModelAndView mc =new ModelAndView("login");
		return mc;	
	}

}
