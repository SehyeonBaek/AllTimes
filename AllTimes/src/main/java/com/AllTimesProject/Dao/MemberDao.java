package com.AllTimesProject.Dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.AllTimesProject.Dto.MemberDto;

public interface MemberDao {

	String checkMemberId(String test_Mid );
	
	
	
	MemberDto selectMemberView(String mid);

	int updateMember(MemberDto member);
	

}
