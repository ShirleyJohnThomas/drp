package com.wyz.hibernate.pojo;

/**
 * TItems entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TItems implements java.io.Serializable {

	// Fields

	private String itemNo;
	private String itemCategoryId;
	private String itemUnitId;
	private String itemName;
	private String spec;
	private String pattern;

	// Constructors

	/** default constructor */
	public TItems() {
	}

	/** minimal constructor */
	public TItems(String itemNo, String itemName) {
		this.itemNo = itemNo;
		this.itemName = itemName;
	}

	/** full constructor */
	public TItems(String itemNo, String itemCategoryId, String itemUnitId,
			String itemName, String spec, String pattern) {
		this.itemNo = itemNo;
		this.itemCategoryId = itemCategoryId;
		this.itemUnitId = itemUnitId;
		this.itemName = itemName;
		this.spec = spec;
		this.pattern = pattern;
	}

	// Property accessors

	public String getItemNo() {
		return this.itemNo;
	}

	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
	}

	public String getItemCategoryId() {
		return this.itemCategoryId;
	}

	public void setItemCategoryId(String itemCategoryId) {
		this.itemCategoryId = itemCategoryId;
	}

	public String getItemUnitId() {
		return this.itemUnitId;
	}

	public void setItemUnitId(String itemUnitId) {
		this.itemUnitId = itemUnitId;
	}

	public String getItemName() {
		return this.itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getSpec() {
		return this.spec;
	}

	public void setSpec(String spec) {
		this.spec = spec;
	}

	public String getPattern() {
		return this.pattern;
	}

	public void setPattern(String pattern) {
		this.pattern = pattern;
	}

}