package com.service;

import java.util.List;

import com.model.ProductModel;

public interface ProductService {
	
	public void add(ProductModel productModel);
	public void edit(ProductModel productModel);
	public void delete(String Id);
	public ProductModel getProductModel(String getId);
	public List getAllProductModel();
}
