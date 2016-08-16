package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ProductDao;
import com.model.ProductModel;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {
    
	@Autowired(required=true)
	private ProductDao productdao;
	@Transactional
	public void add(ProductModel productmodel){
		productdao.add(productmodel);
	}
	
	@Transactional
	public void edit(ProductModel productmodel){
		productdao.edit(productmodel);
	}
	
	@Transactional
	public void delete(String getId){
		productdao.delete(getId);
	}
	
	@Transactional
	public ProductModel getProductModel(String getId){
		return productdao.getProductModel(getId);
	}
	
	@Transactional
	public List getAllProductModel(){
		return productdao.getAllProductModel();
	}
}