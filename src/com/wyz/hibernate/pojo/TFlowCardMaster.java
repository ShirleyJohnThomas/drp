package com.wyz.hibernate.pojo;

import java.util.Date;

/**
 * TFlowCardMaster entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TFlowCardMaster implements java.io.Serializable {

	// Fields

	private String flowCardNo;
	private String optType;
	private long fiscalYearPeriodId;
	private long clientId;
	private String recoderId;
	private Date optDate;
	private String vouSts;
	private String adjusterId;
	private Date adjustDate;
	private String spotterId;
	private Date spotDate;
	private String spotDesc;
	private String confirmerId;
	private Date confDate;

	// Constructors

	/** default constructor */
	public TFlowCardMaster() {
	}

	/** minimal constructor */
	public TFlowCardMaster(String flowCardNo, long fiscalYearPeriodId,
			long clientId, String recoderId, Date optDate, String vouSts) {
		this.flowCardNo = flowCardNo;
		this.fiscalYearPeriodId = fiscalYearPeriodId;
		this.clientId = clientId;
		this.recoderId = recoderId;
		this.optDate = optDate;
		this.vouSts = vouSts;
	}

	/** full constructor */
	public TFlowCardMaster(String flowCardNo, String optType,
			long fiscalYearPeriodId, long clientId, String recoderId,
			Date optDate, String vouSts, String adjusterId, Date adjustDate,
			String spotterId, Date spotDate, String spotDesc,
			String confirmerId, Date confDate) {
		this.flowCardNo = flowCardNo;
		this.optType = optType;
		this.fiscalYearPeriodId = fiscalYearPeriodId;
		this.clientId = clientId;
		this.recoderId = recoderId;
		this.optDate = optDate;
		this.vouSts = vouSts;
		this.adjusterId = adjusterId;
		this.adjustDate = adjustDate;
		this.spotterId = spotterId;
		this.spotDate = spotDate;
		this.spotDesc = spotDesc;
		this.confirmerId = confirmerId;
		this.confDate = confDate;
	}

	// Property accessors

	public String getFlowCardNo() {
		return this.flowCardNo;
	}

	public void setFlowCardNo(String flowCardNo) {
		this.flowCardNo = flowCardNo;
	}

	public String getOptType() {
		return this.optType;
	}

	public void setOptType(String optType) {
		this.optType = optType;
	}

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

	public String getRecoderId() {
		return this.recoderId;
	}

	public void setRecoderId(String recoderId) {
		this.recoderId = recoderId;
	}

	public Date getOptDate() {
		return this.optDate;
	}

	public void setOptDate(Date optDate) {
		this.optDate = optDate;
	}

	public String getVouSts() {
		return this.vouSts;
	}

	public void setVouSts(String vouSts) {
		this.vouSts = vouSts;
	}

	public String getAdjusterId() {
		return this.adjusterId;
	}

	public void setAdjusterId(String adjusterId) {
		this.adjusterId = adjusterId;
	}

	public Date getAdjustDate() {
		return this.adjustDate;
	}

	public void setAdjustDate(Date adjustDate) {
		this.adjustDate = adjustDate;
	}

	public String getSpotterId() {
		return this.spotterId;
	}

	public void setSpotterId(String spotterId) {
		this.spotterId = spotterId;
	}

	public Date getSpotDate() {
		return this.spotDate;
	}

	public void setSpotDate(Date spotDate) {
		this.spotDate = spotDate;
	}

	public String getSpotDesc() {
		return this.spotDesc;
	}

	public void setSpotDesc(String spotDesc) {
		this.spotDesc = spotDesc;
	}

	public String getConfirmerId() {
		return this.confirmerId;
	}

	public void setConfirmerId(String confirmerId) {
		this.confirmerId = confirmerId;
	}

	public Date getConfDate() {
		return this.confDate;
	}

	public void setConfDate(Date confDate) {
		this.confDate = confDate;
	}

}