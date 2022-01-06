package com.AllTimesProject.Dao;


import com.AllTimesProject.Dto.ReporterDto;

public interface ReporterDao {
	
	String oldFileSelect(String rid);

	int profileChange(ReporterDto reporter);
	
	
	String ReporterPwGet(String rid);

	int ReporterModify(ReporterDto reporterInfo);

	ReporterDto selectReporter(String rid);
}
