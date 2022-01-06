package com.AllTimesProject.Dao;

import java.util.ArrayList;

import com.AllTimesProject.Dto.ArticleDto;
import com.AllTimesProject.Dto.ReporterDto;

public interface ArticleDao {
	
	int getMaxNo();
	int insertArticle(ArticleDto article);
	ArrayList<ArticleDto> selectReporterModify(String test_Rid);

}
