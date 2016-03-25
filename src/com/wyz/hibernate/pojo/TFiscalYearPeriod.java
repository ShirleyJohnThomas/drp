package com.wyz.hibernate.pojo;

import java.util.Date;

/**
 * TFiscalYearPeriod entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TFiscalYearPeriod implements java.io.Serializable {

	// Fields

	private long id;
	private long fiscalYear;
	private long fiscalPeriod;
	private Date beginDate;
	private Date endDate;
	private String periodSts;

	// Constructors

	/** default constructor */
	public TFiscalYearPeriod() {
	}

	/** full constructor */
	public TFiscalYearPeriod(long id, long fiscalYear, long fiscalPeriod,
			Date beginDate, Date endDate, String periodSts) {
		this.id = id;
		this.fiscalYear = fiscalYear;
		this.fiscalPeriod = fiscalPeriod;
		this.beginDate = beginDate;
		this.endDate = endDate;
		this.periodSts = periodSts;
	}

	// Property accessors

	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getFiscalYear() {
		return this.fiscalYear;
	}

	public void setFiscalYear(long fiscalYear) {
		this.fiscalYear = fiscalYear;
	}

	public long getFiscalPeriod() {
		return this.fiscalPeriod;
	}

	public void setFiscalPeriod(long fiscalPeriod) {
		this.fiscalPeriod = fiscalPeriod;
	}

	public Date getBeginDate() {
		return this.beginDate;
	}

	public void setBeginDate(Date beginDate) {
		this.beginDate = beginDate;
	}

	public Date getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getPeriodSts() {
		return this.periodSts;
	}

	public void setPeriodSts(String periodSts) {
		this.periodSts = periodSts;
	}

}