package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ProductDao;
import com.model.ProductModel;
@Service
@Transactional
public class ProductServiceImpl  implements ProductService{
@Autowired
private ProductDao productdao;

@Override	
public void add(ProductModel productModel){
	productdao.add(productModel);
	
}
@Override	
public void edit(ProductModel productModel){
	productdao.edit(productModel);
	
}
@Override	
public void delete(String getId){
	productdao.delete(getId);
	
}
@Override
public ProductModel getProductModel(String getId){
	return productdao.getProductModel(getId);
}
@Override
public List getAllProductModel(){
	return productdao.getAllProductModel();
}

}
