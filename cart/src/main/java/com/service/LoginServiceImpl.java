package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.LoginDAO;
import com.model.User;

@Service
@Transactional
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	LoginDAO loginDao;
	
	@Override
	public boolean checkUser(User u)
	
	{
	boolean b=false;
	b=loginDao.checkUser(u);
	if(b==true){
		b=true;
	}
	return b;
	}
	
}