package com.wyz.hibernate.pojo;

/**
 * TTableId entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TTableId implements java.io.Serializable {

	// Fields

	private TTableIdId id;

	// Constructors

	/** default constructor */
	public TTableId() {
	}

	/** full constructor */
	public TTableId(TTableIdId id) {
		this.id = id;
	}

	// Property accessors

	public TTableIdId getId() {
		return this.id;
	}

	public void setId(TTableIdId id) {
		this.id = id;
	}

}