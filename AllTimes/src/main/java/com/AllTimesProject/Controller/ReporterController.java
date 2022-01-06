package com.AllTimesProject.Controller;

import java.io.IOException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.AllTimesProject.Dao.ArticleDao;
import com.AllTimesProject.Dto.ArticleDto;
import com.AllTimesProject.Dto.MemberDto;
import com.AllTimesProject.Dto.ReporterDto;
import com.AllTimesProject.Service.MemberService;
import com.AllTimesProject.Service.ReporterService;



@Controller
public class ReporterController {
	
	@Autowired
	private ReporterService rerSvc;
	private ArticleDao Art;
	private ModelAndView mav;
	
	@RequestMapping(value = "/ReporterWriteForm")
	public ModelAndView ReporterWriteForm (){
		System.out.println("/reporterWriteForm 기사작성 페이지 이동");		
		
		mav = rerSvc.reporterWriteForm();
		
		return mav;
		
	}
	@RequestMapping(value ="/ReporterWrite")
	public ModelAndView ReporterWrite (ArticleDto article, RedirectAttributes ra) throws IllegalStateException, IOException {
		System.out.println("/ReporterWrite 글작성");
		System.out.println("입력한 기사 정보: " + article);		
		mav = rerSvc.reporterWrite(article,ra);
		return mav;
	}

	@RequestMapping(value = "/ReporterModifyForm")
	public ModelAndView ReporterModifyForm (){
		System.out.println("/reporterModifyForm 내기사 관리 페이지 이동");
		mav = rerSvc.reporterModifyForm();
		return mav;
	}
	
	@RequestMapping(value ="/ReporterModify")
	public ModelAndView ReporterModify (ReporterDto rid, RedirectAttributes ra) throws IllegalStateException, IOException {
		System.out.println("/ReporterModify 내 기사 관리");
		mav = rerSvc.reporterModify(rid,ra);
		return mav;
	}
	
	

}
