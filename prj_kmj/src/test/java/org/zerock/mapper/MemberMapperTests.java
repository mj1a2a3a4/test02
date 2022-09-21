package org.zerock.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.MemberVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberMapperTests {
	@Autowired
	private MemberMapper mapper;
	
	/*@Test
	public void testInsert() {
		MemberVO member = new MemberVO();
		member.setId("id123456");
		member.setPw("1234");
		member.setName("test");
		member.setPhone("1234");
		member.setEmail("aaaa@sdfds.com");
		mapper.insert(member);
		
		log.info(member+"1234 test 1234");
	}*/
	@Test
	public void login() {
		
		log.info(mapper.infoMember("user01"));
	}
}
