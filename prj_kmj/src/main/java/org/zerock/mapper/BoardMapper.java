package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BoardVO;

public interface BoardMapper {
	//전체조회
	public List<BoardVO> getList();
	//게시믈등록 
	public void insert(BoardVO board);
	//게시물등록 셀렉키 사용
	public void insertSelectKey(BoardVO board);
	//게시물 조회
	public BoardVO read(Long bno);
	//게시물 삭제
	public int delete(Long bno);
	//게시물 수정
	public int update(BoardVO board);

}
