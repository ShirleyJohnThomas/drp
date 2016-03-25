package com.wyz.hibernate.pojo;

/**
 * TClientInvId entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TClientInvId implements java.io.Serializable {

	// Fields

	private long fiscalYearPeriodId;
	private long clientId;
	private String itemNo;
	private double initQty;
	private double inQty;
	private double outQty;

	// Constructors

	/** default constructor */
	public TClientInvId() {
	}

	/** full constructor */
	public TClientInvId(long fiscalYearPeriodId, long clientId, String itemNo,
			double initQty, double inQty, double outQty) {
		this.fiscalYearPeriodId = fiscalYearPeriodId;
		this.clientId = clientId;
		this.itemNo = itemNo;
		this.initQty = initQty;
		this.inQty = inQty;
		this.outQty = outQty;
	}

	// Property accessors

	public long getFiscalYearPeriodId() {
		return this.fiscalYearPeriodId;
	}

	public void setFiscalYearPeriodId(long fiscalYearPeriodId) {
		this.fiscalYearPeriodId = fiscalYearPeriodId;
	}

	public long getClientId() {
		return this.clientId;
	}

	public void setClientId(long clientId) {
		this.clientId = clientId;
	}

	public String getItemNo() {
		return this.itemNo;
	}

	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
	}

	public double getInitQty() {
		return this.initQty;
	}

	public void setInitQty(double initQty) {
		this.initQty = initQty;
	}

	public double getInQty() {
		return this.inQty;
	}

	public void setInQty(double inQty) {
		this.inQty = inQty;
	}

	public double getOutQty() {
		return this.outQty;
	}

	public void setOutQty(double outQty) {
		this.outQty = outQty;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof TClientInvId))
			return false;
		TClientInvId castOther = (TClientInvId) other;

		return (this.getFiscalYearPeriodId() == castOther
				.getFiscalYearPeriodId())
				&& (this.getClientId() == castOther.getClientId())
				&& ((this.getItemNo() == castOther.getItemNo()) || (this
						.getItemNo() != null
						&& castOther.getItemNo() != null && this.getItemNo()
						.equals(castOther.getItemNo())))
				&& (this.getInitQty() == castOther.getInitQty())
				&& (this.getInQty() == castOther.getInQty())
				&& (this.getOutQty() == castOther.getOutQty());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (int) this.getFiscalYearPeriodId();
		result = 37 * result + (int) this.getClientId();
		result = 37 * result
				+ (getItemNo() == null ? 0 : this.getItemNo().hashCode());
		result = 37 * result + (int) this.getInitQty();
		result = 37 * result + (int) this.getInQty();
		result = 37 * result + (int) this.getOutQty();
		return result;
	}

}