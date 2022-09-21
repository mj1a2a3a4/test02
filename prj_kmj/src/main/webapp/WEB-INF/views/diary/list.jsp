<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
table{
    width : 70%; /* 가로 넓이 조정 */
    table-layout: fixed; /* 표 크기 고정*/
}
.tbl-header{
    
    text-align: center;
}
.tbl-content{
    height: 700px;
    text-align: center;
    margin-top: 0px;
    
}
th{
    padding : 20px 15px;
    text-align: left;
    font-weight: 500;
    font-size: 15px;
    color: #fff;
    text-transform: uppercase;
}
td{
    padding: 15px;
    text-align: left;
    vertical-align: middle;
    font-weight: 300;
    font-size: 15px;
    color: #fff;
    border-bottom: solid 1px rgba(255, 255, 255, 0.1);

}
.btn-default{
    color : #1BBC9b;
    font-size: 15px;
    background-color: #fff;
    margin-bottom: 10px;
    padding: 10px;
    border: none;
    border-radius: 5px;
    font-weight: 600;
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
td a{
	text-decoration: none;
	color: white;
}
.tbl-hd{
	margin:auto;
	background-color: rgba(255, 255, 255, 0.3);
}
.tbl-ct{
	margin:auto;
}
.login-ms{
	text-align: right;
	color: white;
	font-size: 15px;
	text-decoration: none;
	text-weight: 550;
	
	
}
</style>
<body>
<header>
<h1><a href="/diary/list">BOOK DIARY</a></h1>
<ul>
    <li><a href="/diary/diary">다이어리</a></li>
    <li><a href="/diary/list">게시판</a></li>
    <li><a href="/diary/myPage">마이페이지</a></li>
    <li><a href="/diary/login">로그인</a></li>
    <li><a href="/diary/logout">로그아웃</a></li>
</ul>
</header>
<p class="login-ms"><a href="#" style="text-decoration: none; color: white;">${sessionScope.id }</a>님 반갑습니다.</p>
<div class="tbl-header">
    <table border="0" cellpadding="0" cellspacing="0" class="tbl-hd">
        <thead>
        <tr>
            <th>#번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>작성일</th>
            <th>수정일</th>
        </tr>
    </thead>
    </table>
</div>
<div class="tbl-content">
    <table border="0" cellpadding="0" cellspacing="0" class="tbl-ct">
    <c:forEach items="${list }" var="board">
		<tr>        
      		<td><c:out value="${board.bno }"/></td>
      		<td><a href='/diary/get?bno=<c:out value="${board.bno }"/>'><c:out value="${board.title }"/></a></td>
      		<td><c:out value="${board.writer }"/></td>
      		<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regDate }"/></td>
      		<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate }"/></td>	
		</tr>
    </c:forEach>
        <tr>
            <td colspan="5">
            	<button class="btn-default" onclick="location.href='/diary/registerBoard'">글쓰기</button>
            	<p>페이지네이션 부분</p>
            </td>
            
        </tr>
    
</table>

</div>
</body>
</html>