package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class DiaryVO {
	private long dno; //순번
	private String id; //작성자 아이디
	private String title; //다이어리 제목
	private String btitle; //읽은 책
	private String writer; //저자
	private String publisher; //출판사
	private Date regDate; //등록일
	private Date updateDate;  //수정일
	private String content; // 내용
}
