package org.zerock.service;

import java.util.List;

import org.zerock.domain.DiaryVO;

public interface DiaryService {
		
		//개인 전체 조회
		public List<DiaryVO> getList(String id);
		
		//다이어리 작성 메소드
		public void register(DiaryVO diary);
		
		//다이어리 수정
		public boolean modify(DiaryVO diary);
		
		//다이어리 삭제
		public boolean remove(Long bno);
		
		//다이어리 게시물 상세조회
		public DiaryVO get(Long dno); 
}
