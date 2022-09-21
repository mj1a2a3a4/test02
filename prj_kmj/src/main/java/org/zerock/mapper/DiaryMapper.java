package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.DiaryVO;


public interface DiaryMapper {
	
	//개인 전체 조회
	public List<DiaryVO> getList(String id);
	
	//다이어리 작성 메소드
	public void insert(DiaryVO diary);
	
	//게시물 등록 셀렉키 사용
	public void insertSelectKey(DiaryVO diary);
	
	//다이어리 수정
	public int update(DiaryVO diary);
	
	//다이어리 삭제
	public int delete(Long bno);
	
	//다이어리 조회
	public DiaryVO read(Long dno); 
	
}
