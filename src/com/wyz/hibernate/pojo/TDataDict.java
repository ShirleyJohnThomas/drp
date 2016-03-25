package com.wyz.hibernate.pojo;

/**
 * TDataDict entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TDataDict implements java.io.Serializable {

	// Fields

	private String id;
	private String name;
	private String category;

	// Constructors

	/** default constructor */
	public TDataDict() {
	}

	/** full constructor */
	public TDataDict(String id, String name, String category) {
		this.id = id;
		this.name = name;
		this.category = category;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return this.category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

}