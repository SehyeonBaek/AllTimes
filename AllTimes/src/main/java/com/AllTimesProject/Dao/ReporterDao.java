package com.AllTimesProject.Dao;


import com.AllTimesProject.Dto.ReporterDto;

public interface ReporterDao {
	
	int ReporterModify(ReporterDto reporterInfo);

	ReporterDto selectReporter(String rid);
}
