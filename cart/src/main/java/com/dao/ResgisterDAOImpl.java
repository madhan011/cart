package com.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Newuser;

@Repository
@Transactional
public class ResgisterDAOImpl implements RegisterDAO{
	

	@Autowired
	private SessionFactory sf;
	

	/*@Transactional
	public List<Newuser> list() {
		@SuppressWarnings("unchecked")
		List<Newuser> listProduct = (List<Newuser>) sf.getCurrentSession().createCriteria(Newuser.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listProduct;

	}*/
	public void sa(Newuser newuser){
		sf.getCurrentSession().saveOrUpdate(newuser);
	}

}