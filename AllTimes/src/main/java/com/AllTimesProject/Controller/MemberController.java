package com.AllTimesProject.Controller;

import java.io.IOException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.AllTimesProject.Dto.MemberDto;
import com.AllTimesProject.Service.MemberService;



@Controller
public class MemberController {
	
	@Autowired
	private MemberService memSvc;
	
	private ModelAndView mav;

	@RequestMapping(value = "/MemberModifyForm")
	public ModelAndView MemberModifyForm (){
		System.out.println("/memberModifyForm 회원 정보 수정페이지 이동");
		
		
		mav = memSvc.memberModifyForm();
		
		return mav;
	}
	
	
	@RequestMapping(value = "/MemberModify")
	public ModelAndView MemberModify(MemberDto member, RedirectAttributes ra) throws IllegalStateException, IOException {
		System.out.println("/memberModify 정보수정 요청");
		System.out.println("수정할 회원 정보: " + member);
		
		mav = memSvc.memberModify(member, ra);
		
		return mav;
	}
	

}
