package org.zerock.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.MemberVO;
import org.zerock.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberMapper mapper;
	
	
	@Override
	public void insert(MemberVO member) {
		log.info("insert....."+member);
		
		mapper.insert(member);
	}

	@Override
	public int login(String id, String pw) {
		log.info("login......."+mapper.login(id, pw));
		
		return mapper.login(id, pw);
	}

	@Override
	public int idCheck(String id) {
		log.info("idCheck......."+id+mapper.idCheck(id));
		
		return mapper.idCheck(id);
	}

	@Override
	public MemberVO infoMember(String id) {
		log.info("info Member....."+mapper.infoMember(id));
		
		return mapper.infoMember(id);
	}

	@Override
	public boolean update(MemberVO member) {
		log.info("update......"+member);
		return mapper.update(member)==1;
	}

	@Override
	public boolean remove(String id, String pw) {
		log.info("remove......id : "+id+" pw : " +pw);
		return mapper.remove(id, pw)==1;
	}

	
}
