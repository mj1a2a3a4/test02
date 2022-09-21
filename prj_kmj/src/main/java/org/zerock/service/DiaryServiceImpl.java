package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.DiaryVO;
import org.zerock.mapper.DiaryMapper;

import jdk.internal.org.jline.utils.Log;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class DiaryServiceImpl implements DiaryService{
	
	@Autowired
	public DiaryMapper mapper;
	
	
	@Override //개인 다이어리 전체조회
	public List<DiaryVO> getList(String id) {
		log.info("getlist.....");
		return mapper.getList(id);
	}

	@Override //다이어리 등록
	public void register(DiaryVO diary) {
		log.info("register....."+diary);
		
		mapper.insertSelectKey(diary);
	}

	@Override //다이어리 수정
	public boolean modify(DiaryVO diary) {
		log.info("modify...."+diary);
		return mapper.update(diary)==1;
	}

	@Override //다이어리 삭제
	public boolean remove(Long dno) {
		log.info("remove....."+dno);
		return mapper.delete(dno)==1;
	}

	@Override //게시물 조회
	public DiaryVO get(Long dno) {
		log.info("get......"+dno);
		return mapper.read(dno);
	}

}
