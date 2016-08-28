package com.mars.pjt.dto;

import java.sql.Timestamp;

public class PjtDto {
	private int			pjtno;
	private String		pjtnm;
	private String		pjtdtl;
	private Timestamp	startdt;
	private Timestamp	enddt;
	private Timestamp	regdt;
	private String		reguser;
	
	public int getPjtno() {
		return pjtno;
	}
	public void setPjtno(int pjtno) {
		this.pjtno = pjtno;
	}
	public String getPjtnm() {
		return pjtnm;
	}
	public void setPjtnm(String pjtnm) {
		this.pjtnm = pjtnm;
	}
	public String getPjtdtl() {
		return pjtdtl;
	}
	public void setPjtdtl(String pjtdtl) {
		this.pjtdtl = pjtdtl;
	}
	public Timestamp getStartdt() {
		return startdt;
	}
	public void setStartdt(Timestamp startdt) {
		this.startdt = startdt;
	}
	public Timestamp getEnddt() {
		return enddt;
	}
	public void setEnddt(Timestamp enddt) {
		this.enddt = enddt;
	}
	public Timestamp getRegdt() {
		return regdt;
	}
	public void setRegdt(Timestamp regdt) {
		this.regdt = regdt;
	}
	public String getReguser() {
		return reguser;
	}
	public void setReguser(String reguser) {
		this.reguser = reguser;
	}
	@Override
	public String toString() {
		return "PjtDto [pjtno=" + pjtno + ", pjtnm=" + pjtnm + ", startdt=" + startdt + ", enddt=" + enddt + ", regdt="
				+ regdt + ", reguser=" + reguser + "]";
	}
}