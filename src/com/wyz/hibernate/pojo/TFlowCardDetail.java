package com.wyz.hibernate.pojo;

/**
 * TFlowCardDetail entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TFlowCardDetail implements java.io.Serializable {

	// Fields

	private TFlowCardDetailId id;
	private double optQty;
	private double adjustQty;
	private String adjustReason;
	private String adjustFlag;
	private long aimClientId;

	// Constructors

	/** default constructor */
	public TFlowCardDetail() {
	}

	/** minimal constructor */
	public TFlowCardDetail(TFlowCardDetailId id) {
		this.id = id;
	}

	/** full constructor */
	public TFlowCardDetail(TFlowCardDetailId id, double optQty,
			double adjustQty, String adjustReason, String adjustFlag,
			long aimClientId) {
		this.id = id;
		this.optQty = optQty;
		this.adjustQty = adjustQty;
		this.adjustReason = adjustReason;
		this.adjustFlag = adjustFlag;
		this.aimClientId = aimClientId;
	}

	// Property accessors

	public TFlowCardDetailId getId() {
		return this.id;
	}

	public void setId(TFlowCardDetailId id) {
		this.id = id;
	}

	public double getOptQty() {
		return this.optQty;
	}

	public void setOptQty(double optQty) {
		this.optQty = optQty;
	}

	public double getAdjustQty() {
		return this.adjustQty;
	}

	public void setAdjustQty(double adjustQty) {
		this.adjustQty = adjustQty;
	}

	public String getAdjustReason() {
		return this.adjustReason;
	}

	public void setAdjustReason(String adjustReason) {
		this.adjustReason = adjustReason;
	}

	public String getAdjustFlag() {
		return this.adjustFlag;
	}

	public void setAdjustFlag(String adjustFlag) {
		this.adjustFlag = adjustFlag;
	}

	public long getAimClientId() {
		return this.aimClientId;
	}

	public void setAimClientId(long aimClientId) {
		this.aimClientId = aimClientId;
	}

}