package com.AllTimesProject.Dto;

public class MemberDto {
	private String mid;
	private String mpw;
	private String mname;
	private String mstate;
	private String mmail;
	private String mage;
	private String mcontact;
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpw() {
		return mpw;
	}
	public void setMpw(String mpw) {
		this.mpw = mpw;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMstate() {
		return mstate;
	}
	public void setMstate(String mstate) {
		this.mstate = mstate;
	}
	public String getMmail() {
		return mmail;
	}
	public void setMmail(String mmail) {
		this.mmail = mmail;
	}
	public String getMage() {
		return mage;
	}
	public void setMage(String mage) {
		this.mage = mage;
	}
	public String getMcontact() {
		return mcontact;
	}
	public void setMcontact(String mcontact) {
		this.mcontact = mcontact;
	}
	@Override
	public String toString() {
		return "MemberDto [mid=" + mid + ", mpw=" + mpw + ", mname=" + mname + ", mstate=" + mstate + ", mmail=" + mmail
				+ ", mage=" + mage + ", mcontact=" + mcontact + "]";
	}
	
	
	
	
}
	