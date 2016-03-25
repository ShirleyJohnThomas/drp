package com.wyz.hibernate.pojo;

/**
 * TFlowCardDetailId entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TFlowCardDetailId implements java.io.Serializable {

	// Fields

	private String flowCardNo;
	private String itemNo;

	// Constructors

	/** default constructor */
	public TFlowCardDetailId() {
	}

	/** full constructor */
	public TFlowCardDetailId(String flowCardNo, String itemNo) {
		this.flowCardNo = flowCardNo;
		this.itemNo = itemNo;
	}

	// Property accessors

	public String getFlowCardNo() {
		return this.flowCardNo;
	}

	public void setFlowCardNo(String flowCardNo) {
		this.flowCardNo = flowCardNo;
	}

	public String getItemNo() {
		return this.itemNo;
	}

	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof TFlowCardDetailId))
			return false;
		TFlowCardDetailId castOther = (TFlowCardDetailId) other;

		return ((this.getFlowCardNo() == castOther.getFlowCardNo()) || (this
				.getFlowCardNo() != null
				&& castOther.getFlowCardNo() != null && this.getFlowCardNo()
				.equals(castOther.getFlowCardNo())))
				&& ((this.getItemNo() == castOther.getItemNo()) || (this
						.getItemNo() != null
						&& castOther.getItemNo() != null && this.getItemNo()
						.equals(castOther.getItemNo())));
	}

	public int hashCode() {
		int result = 17;

		result = 37
				* result
				+ (getFlowCardNo() == null ? 0 : this.getFlowCardNo()
						.hashCode());
		result = 37 * result
				+ (getItemNo() == null ? 0 : this.getItemNo().hashCode());
		return result;
	}

}