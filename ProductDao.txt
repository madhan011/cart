package com.dao;

import java.util.List;

import com.model.*;

public interface ProductDao {

  public void add(ProductModel productmodel);
  public void edit(ProductModel productmodel);
  public void delete(String getId);
  public ProductModel getProductModel(String getId);
  public List getAllProductModel();
}
