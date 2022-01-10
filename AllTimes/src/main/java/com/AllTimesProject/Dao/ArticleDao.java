package com.AllTimesProject.Dao;

import java.util.ArrayList;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.AllTimesProject.Dto.ArticleDto;
import com.AllTimesProject.Dto.ReporterDto;

public interface ArticleDao {
	
	int getMaxNo();
	int insertArticle(ArticleDto article);
	ArrayList<ArticleDto> selectArticleModify(String test_Rid);
	ArticleDto selectArticleView(int ar_no);
}
