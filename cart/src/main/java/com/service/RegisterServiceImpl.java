package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.RegisterDAO;
import com.model.Newuser;



@Service
@Transactional
public class RegisterServiceImpl implements RegisterService{
	@Autowired
	private RegisterDAO registerDAO;
	
	@Override
	public void s(Newuser newuser) {
		
		registerDAO.sa(newuser);
		
	}
	

}