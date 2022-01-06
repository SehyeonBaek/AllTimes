package com.AllTimesProject.Dto;

import org.springframework.web.multipart.MultipartFile;

public class ArticleDto {
	private int ar_no;
	private String ar_title;
	private String ar_detail; 
	private String ar_name;
	private String ar_date;
	private String ar_genre;
	private String ar_hits;
	private String ar_thumbsup;
	private String ar_thumbsdown;
	private String ar_filename;
	private MultipartFile ar_file;
	public int getAr_no() {
		return ar_no;
	}
	public void setAr_no(int ar_no) {
		this.ar_no = ar_no;
	}
	public String getAr_title() {
		return ar_title;
	}
	public void setAr_title(String ar_title) {
		this.ar_title = ar_title;
	}
	public String getAr_detail() {
		return ar_detail;
	}
	public void setAr_detail(String ar_detail) {
		this.ar_detail = ar_detail;
	}
	public String getAr_name() {
		return ar_name;
	}
	public void setAr_name(String ar_name) {
		this.ar_name = ar_name;
	}
	public String getAr_date() {
		return ar_date;
	}
	public void setAr_date(String ar_date) {
		this.ar_date = ar_date;
	}
	public String getAr_genre() {
		return ar_genre;
	}
	public void setAr_genre(String ar_genre) {
		this.ar_genre = ar_genre;
	}
	public String getAr_hits() {
		return ar_hits;
	}
	public void setAr_hits(String ar_hits) {
		this.ar_hits = ar_hits;
	}
	public String getAr_thumbsup() {
		return ar_thumbsup;
	}
	public void setAr_thumbsup(String ar_thumbsup) {
		this.ar_thumbsup = ar_thumbsup;
	}
	public String getAr_thumbsdown() {
		return ar_thumbsdown;
	}
	public void setAr_thumbsdown(String ar_thumbsdown) {
		this.ar_thumbsdown = ar_thumbsdown;
	}
	public String getAr_filename() {
		return ar_filename;
	}
	public void setAr_filename(String ar_filename) {
		this.ar_filename = ar_filename;
	}
	public MultipartFile getAr_file() {
		return ar_file;
	}
	public void setAr_file(MultipartFile ar_file) {
		this.ar_file = ar_file;
	}
	@Override
	public String toString() {
		return "ArticleDto [ar_no=" + ar_no + ", ar_title=" + ar_title + ", ar_detail=" + ar_detail + ", ar_name="
				+ ar_name + ", ar_date=" + ar_date + ", ar_genre=" + ar_genre + ", ar_hits=" + ar_hits
				+ ", ar_thumbsup=" + ar_thumbsup + ", ar_thumbsdown=" + ar_thumbsdown + ", ar_filename=" + ar_filename
				+ ", ar_file=" + ar_file + "]";
	}
	
	
	
}