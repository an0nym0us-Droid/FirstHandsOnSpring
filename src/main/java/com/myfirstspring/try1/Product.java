package com.myfirstspring.try1;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "product")
public class Product {
	@Id 
	@Column(name="product_id")
	private long productId;
	@Column(name="product_name")
	private String productName;
	
	
	@ManyToOne
	@JoinColumn(name = "category_id")
	private Category category;
	/**********************************************************************/
	
	public long getProductId() {
		return productId;
	}
	public void setId(long id) {
		this.productId = id;
	}
	
	public String getProductName() {
		return productName;
	}
	public void setProductName(String name) {
		this.productName = name;
	}
	
	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
}
