package org.zerock.mapper;

import org.zerock.domain.MemberVO;

public interface MemberMapper {
	//회원가입
	public void insert(MemberVO member);
	
	//로그인
	public int login(String id, String pw);
	//회원정보조회(마이페이지)
	public MemberVO infoMember(String id);
	//회원정보수정
	public int update(MemberVO member);
	//회원탈퇴
	public int remove(String id, String pw);
	//아이디,비밀번호 찾기
	
	//아이디 중복조회
	public int idCheck(String id);
}
