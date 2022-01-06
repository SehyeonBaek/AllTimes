package com.AllTimesProject.Service;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.AllTimesProject.Dao.*;
import com.AllTimesProject.Dto.MemberDto;
import com.AllTimesProject.Dto.ReporterDto;



@Service
public class MemberService {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private MemberDao mdao;
	
	private ModelAndView mav;
	
	
public ModelAndView memberModifyForm() {
	System.out.println("MemberService.MemberMofidyForm()");
	mav = new ModelAndView();	
		
	String test_Mid = "TEST2";
	
	
	MemberDto memberModify = mdao.selectMemberView(test_Mid);
	mav.addObject("memberModify", memberModify);
	//MemberModify에서 value값
	mav.setViewName("MemberModifyForm");
	
	return mav;
}
public ModelAndView memberModify(MemberDto member, RedirectAttributes ra) throws IllegalStateException, IOException {
	System.out.println("MemberService.MemberModify()");
	mav = new ModelAndView();
	int updateResult = 0 ; 
	try {
		updateResult = mdao.updateMember(member);
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("수정실패");
	}
	
	if(updateResult > 0) {
		ra.addFlashAttribute("modifyMsg", member.getMid()+" 회원의 정보를 수정하였습니다.");
	} else {
		ra.addFlashAttribute("modifyMsg", member.getMid()+ " 회원의 정보수정을 실패하였습니다.");
	}
	
	mav.setViewName("redirect:/MemberModifyForm");
	System.out.println("updateResult");
	return mav;

	}



}