package com.wyz.hibernate.pojo;

/**
 * TClientInv entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TClientInv implements java.io.Serializable {

	// Fields

	private TClientInvId id;

	// Constructors

	/** default constructor */
	public TClientInv() {
	}

	/** full constructor */
	public TClientInv(TClientInvId id) {
		this.id = id;
	}

	// Property accessors

	public TClientInvId getId() {
		return this.id;
	}

	public void setId(TClientInvId id) {
		this.id = id;
	}

}