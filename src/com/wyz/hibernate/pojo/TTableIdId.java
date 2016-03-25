package com.wyz.hibernate.pojo;

/**
 * TTableIdId entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TTableIdId implements java.io.Serializable {

	// Fields

	private String tableName;
	private long value;

	// Constructors

	/** default constructor */
	public TTableIdId() {
	}

	/** full constructor */
	public TTableIdId(String tableName, long value) {
		this.tableName = tableName;
		this.value = value;
	}

	// Property accessors

	public String getTableName() {
		return this.tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public long getValue() {
		return this.value;
	}

	public void setValue(long value) {
		this.value = value;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof TTableIdId))
			return false;
		TTableIdId castOther = (TTableIdId) other;

		return ((this.getTableName() == castOther.getTableName()) || (this
				.getTableName() != null
				&& castOther.getTableName() != null && this.getTableName()
				.equals(castOther.getTableName())))
				&& (this.getValue() == castOther.getValue());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getTableName() == null ? 0 : this.getTableName().hashCode());
		result = 37 * result + (int) this.getValue();
		return result;
	}

}