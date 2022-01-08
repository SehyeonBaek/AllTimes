package com.AllTimesProject.Service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.AllTimesProject.Dao.*;
import com.AllTimesProject.Dto.ArticleDto;
import com.AllTimesProject.Dto.MemberDto;
import com.AllTimesProject.Dto.ReporterDto;


@Service
public class ReporterService {
	@Autowired
	private HttpSession session;

	@Autowired
	private ArticleDao Art;
	
	private ReporterDao Reo;
	
	private ModelAndView mav;
	
	private String savePath = "C:\\Users\\mm\\git\\AllTimes\\AllTimes\\src\\main\\webapp\\resources\\upLoadeFile\\ReporterProfile";
	public ModelAndView reporterWrite(ArticleDto article,RedirectAttributes ra)
			throws IllegalStateException, IOException {
	
		System.out.println("ReporterWrite.reporterWrite()");
		mav = new ModelAndView();
	
		// 글번호 생성
		int ar_no = Art.getMaxNo();
		System.out.println("ar_no : " + ar_no);
		article.setAr_no(ar_no + 1);
		
		// 첨부파일
		MultipartFile AR_FILE = article.getAr_file();
		String AR_FILENAME = "";
		
		if(!AR_FILE.isEmpty()) {
			AR_FILENAME = AR_FILE.getOriginalFilename();
			//파일명을 추출하는 부분
			UUID uuid = UUID.randomUUID();
			//중복방지를 위한 임의의 파일명
			AR_FILENAME = uuid.toString()+"_"+AR_FILENAME;
			//임의의 파일명 + 파일명을 합쳐서 파일명 재정의
			System.out.println("첨부파일명 : " + AR_FILENAME);
			AR_FILE.transferTo( new File(savePath, AR_FILENAME) );
			//아무 내용도 없이 이름만있는(AR_FILENAME)에다가 웹에서 올린파일을 덮어쓰기
		}
		article.setAr_filename(AR_FILENAME);
		
		// insert문 수행
				String test_Rid = "TEST2";
				article.setAr_name(test_Rid);
				System.out.println(article);
				
				int insertResult = Art.insertArticle(article);
				System.out.println("insertResult : " +insertResult);
				
				ra.addFlashAttribute("msg", article.getAr_no()+"번 글이 등록 되었습니다.");
				
		// 기자 이름
				
		// addObject : key와 value를 담아 보낼 수 있는 메서드
		
		mav.setViewName("redirect:/ArticleModifyForm");
		return mav;
	
		
	}
	
		
	public ModelAndView reporterWriteForm() {
		System.out.println("/ReporterService.ReporterWriteForm ()");
		mav = new ModelAndView();
		mav.setViewName("ReporterWriteForm");
		return mav;
	}
	




}
