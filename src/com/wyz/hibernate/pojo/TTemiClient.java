package com.wyz.hibernate.pojo;

/**
 * TTemiClient entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TTemiClient implements java.io.Serializable {

	// Fields

	private long id;
	private long pid;
	private String temiClientLevelId;
	private String name;
	private String temiClientId;
	private String contactTel;
	private String contactor;
	private String address;
	private String zipCode;
	private String isLeaf;
	private String isTemiClient;

	// Constructors

	/** default constructor */
	public TTemiClient() {
	}

	/** minimal constructor */
	public TTemiClient(long id, String name, String isLeaf, String isTemiClient) {
		this.id = id;
		this.name = name;
		this.isLeaf = isLeaf;
		this.isTemiClient = isTemiClient;
	}

	/** full constructor */
	public TTemiClient(long id, long pid, String temiClientLevelId,
			String name, String temiClientId, String contactTel,
			String contactor, String address, String zipCode, String isLeaf,
			String isTemiClient) {
		this.id = id;
		this.pid = pid;
		this.temiClientLevelId = temiClientLevelId;
		this.name = name;
		this.temiClientId = temiClientId;
		this.contactTel = contactTel;
		this.contactor = contactor;
		this.address = address;
		this.zipCode = zipCode;
		this.isLeaf = isLeaf;
		this.isTemiClient = isTemiClient;
	}

	// Property accessors

	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getPid() {
		return this.pid;
	}

	public void setPid(long pid) {
		this.pid = pid;
	}

	public String getTemiClientLevelId() {
		return this.temiClientLevelId;
	}

	public void setTemiClientLevelId(String temiClientLevelId) {
		this.temiClientLevelId = temiClientLevelId;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTemiClientId() {
		return this.temiClientId;
	}

	public void setTemiClientId(String temiClientId) {
		this.temiClientId = temiClientId;
	}

	public String getContactTel() {
		return this.contactTel;
	}

	public void setContactTel(String contactTel) {
		this.contactTel = contactTel;
	}

	public String getContactor() {
		return this.contactor;
	}

	public void setContactor(String contactor) {
		this.contactor = contactor;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getZipCode() {
		return this.zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getIsLeaf() {
		return this.isLeaf;
	}

	public void setIsLeaf(String isLeaf) {
		this.isLeaf = isLeaf;
	}

	public String getIsTemiClient() {
		return this.isTemiClient;
	}

	public void setIsTemiClient(String isTemiClient) {
		this.isTemiClient = isTemiClient;
	}

}