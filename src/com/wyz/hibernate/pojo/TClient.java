package com.wyz.hibernate.pojo;

/**
 * TClient entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TClient implements java.io.Serializable {

	// Fields

	private long id;
	private long pid;
	private String clientLevelId;
	private String name;
	private String clientId;
	private String bankAcctNo;
	private String contactTel;
	private String address;
	private String zipCode;
	private String isLeaf;
	private String isClient;

	// Constructors

	/** default constructor */
	public TClient() {
	}

	/** minimal constructor */
	public TClient(long id, String name, String isLeaf, String isClient) {
		this.id = id;
		this.name = name;
		this.isLeaf = isLeaf;
		this.isClient = isClient;
	}

	/** full constructor */
	public TClient(long id, long pid, String clientLevelId, String name,
			String clientId, String bankAcctNo, String contactTel,
			String address, String zipCode, String isLeaf, String isClient) {
		this.id = id;
		this.pid = pid;
		this.clientLevelId = clientLevelId;
		this.name = name;
		this.clientId = clientId;
		this.bankAcctNo = bankAcctNo;
		this.contactTel = contactTel;
		this.address = address;
		this.zipCode = zipCode;
		this.isLeaf = isLeaf;
		this.isClient = isClient;
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

	public String getClientLevelId() {
		return this.clientLevelId;
	}

	public void setClientLevelId(String clientLevelId) {
		this.clientLevelId = clientLevelId;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getClientId() {
		return this.clientId;
	}

	public void setClientId(String clientId) {
		this.clientId = clientId;
	}

	public String getBankAcctNo() {
		return this.bankAcctNo;
	}

	public void setBankAcctNo(String bankAcctNo) {
		this.bankAcctNo = bankAcctNo;
	}

	public String getContactTel() {
		return this.contactTel;
	}

	public void setContactTel(String contactTel) {
		this.contactTel = contactTel;
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

	public String getIsClient() {
		return this.isClient;
	}

	public void setIsClient(String isClient) {
		this.isClient = isClient;
	}

}