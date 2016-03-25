package com.wyz.hibernate.pojo;

import java.util.Date;

/**
 * TUser entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TUser implements java.io.Serializable {

	// Fields

	private String userId;
	private String userName;
	private String password;
	private String contactTel;
	private String email;
	private Date createDate;

	// Constructors

	/** default constructor */
	public TUser() {
	}

	/** minimal constructor */
	public TUser(String userId, String userName, String password) {
		this.userId = userId;
		this.userName = userName;
		this.password = password;
	}

	/** full constructor */
	public TUser(String userId, String userName, String password,
			String contactTel, String email, Date createDate) {
		this.userId = userId;
		this.userName = userName;
		this.password = password;
		this.contactTel = contactTel;
		this.email = email;
		this.createDate = createDate;
	}

	// Property accessors

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getContactTel() {
		return this.contactTel;
	}

	public void setContactTel(String contactTel) {
		this.contactTel = contactTel;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

}