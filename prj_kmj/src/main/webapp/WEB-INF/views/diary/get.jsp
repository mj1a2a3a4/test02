<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
*{
    box-sizing: border-box;
    font-family: 'Noto sans KR', sans-serif;
}
h1{
    font-size : 40px;
    color : #fff;
    text-transform: uppercase;
    font-weight: 555; /* 글자 굵기 */
    text-align: center;
    margin-bottom: 15px; 
}

body{
    background-color:  #1BBC9b;
}
h1 a{
    text-decoration: none;
    color : #fff;
}
ul{
    list-style: none;
    text-align: right;
    
}
ul li{
    display: inline;
    margin: 15px;
}
ul li a{
    text-decoration: none;
    color: white;
    font-size: 20px;
    font-weight: 550;
}
textarea{
    resize: none;
    border-radius: 5px;
}
.write-form{
    width: 50%;
    border: 0;
    border-radius: 5px;
    background-color: #EEEFF1;
    margin: 0 auto;
    padding: 20px;
}
.title-field{
    font-size: 15px;
    margin-bottom: 10px;
    border: none;
    border-radius: 5px;
    padding: 10px;
    width: 100%;
}
.text-field{
	background-color: #EEEFF1;
    font-size: 15px;
    margin-bottom: 10px;
    border: none;
    border-radius: 5px;
    padding: 10px;
    width: 41%;
    margin-right: 3.3px;
}
.area-field{
    font-size: 15px;
    margin-bottom: 0px;
    border: none;
    border-radius: 5px;
    padding: 10px;
    width: 100%;
}
.btn-default{
    color: #EEEFF1;
    font-size: 14px;
    background-color:  #1bbc9b;
    margin-bottom: 10px;
    padding: 10px;
    border: none;
    border-radius: 5px;
}
.lb-default{
	margin-right: 3px;
	font-weight: bold;
}
.lb-div{
	margin-bottom: 10px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<body>
<h1><a href="/diary/list">Book DiARy</a></h1>
<ul>
    <li><a href="/diary/diary">다이어리</a></li>
    <li><a href="/diary/list">게시판</a></li>
    <li><a href="/diary/myPage">마이페이지</a></li>
    <li><a href="/diary/login">로그인</a></li>
    <li><a href="/diary/logout">로그아웃</a></li>
</ul>

<div class="write-form">
        <input type="text" placeholder="제목" class="title-field" name="title" readonly="readonly" value='<c:out value="${board.title}"/>'>
        <label class="lb-default">게시물 번호 </label><input type="text" placeholder="게시물 번호" class="text-field" name="writer" readonly="readonly" value='<c:out value="${board.bno}"/>'>
        <label class="lb-default">작성자</label><input type="text" placeholder="작성자" class="text-field" name="writer" readonly="readonly" value='<c:out value="${board.writer}"/>'>
        <textarea placeholder="내용을 입력하세요." class="area-field" rows="27" name="content" readonly="readonly" ><c:out value="${board.content }"/></textarea>
        <button data-oper='modify' class="btn btn-default" onclick="location.href='/diary/modify?bno=<c:out value="${board.bno }"/>'">수정하기</button>
		<button data-oper='list' class="btn btn-default" onclick="location.href='/diary/list'">리스트</button>
</div>
</body>
</html>