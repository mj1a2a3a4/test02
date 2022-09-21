package org.zerock.service;

import org.zerock.domain.MemberVO;

public interface MemberService {
	
	//회원가입
	public void insert(MemberVO member);
	
	//로그인
	public int login(String id, String pw);
	
	//아이디 중복체크
	public int idCheck(String id);
	
	//회원정보 상세조회
	public MemberVO infoMember(String id);
	
	//회원정보 수정
	public boolean update(MemberVO member);
	
	//회원탈퇴
	public boolean remove(String id, String pw);
}