package com.AllTimesProject.Dao;

import com.AllTimesProject.Dto.ArticleDto;

public interface ArticleDao {
	
	int getMaxNo();
	int insertArticle(ArticleDto article);

}
