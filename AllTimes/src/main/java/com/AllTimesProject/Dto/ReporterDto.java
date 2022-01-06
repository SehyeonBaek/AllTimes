package com.AllTimesProject.Dto;

import org.springframework.web.multipart.MultipartFile;

public class ReporterDto {
	private String rid;
	private String rpw;
	private String rname;
	private String rstate;
	private String rmail;
	private String rprofile;
	private MultipartFile rfile;
	
	public MultipartFile getRfile() {
		return rfile;
	}
	public void setRfile(MultipartFile rfile) {
		this.rfile = rfile;
	}
	public String getRid() {
		return rid;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}
	public String getRpw() {
		return rpw;
	}
	public void setRpw(String rpw) {
		this.rpw = rpw;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getRstate() {
		return rstate;
	}
	public void setRstate(String rstate) {
		this.rstate = rstate;
	}
	public String getRmail() {
		return rmail;
	}
	public void setRmail(String rmail) {
		this.rmail = rmail;
	}
	public String getRprofile() {
		return rprofile;
	}
	public void setRprofile(String rprofile) {
		this.rprofile = rprofile;
	}
	@Override
	public String toString() {
		return "ReporterDto [rid=" + rid + ", rpw=" + rpw + ", rname=" + rname + ", rstate=" + rstate + ", rmail="
				+ rmail + ", rprofile=" + rprofile + ", rfile=" + rfile + "]";
	}
	
	

	
	
}
	