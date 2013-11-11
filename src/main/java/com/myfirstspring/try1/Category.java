package com.myfirstspring.try1;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "category")
public class Category {
	@Id 
	@Column(name="category_id")
	public long categoryId;
	@Column(name="category_name")
	public String categoryName;
	
	@OneToMany(mappedBy = "category",fetch = FetchType.EAGER)
	private List<Product> products;
	/**********************************************************************/
	
	public long getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(long id) {
		this.categoryId = id;
	}
	
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String name) {
		this.categoryName = name;
	}
		
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
}
