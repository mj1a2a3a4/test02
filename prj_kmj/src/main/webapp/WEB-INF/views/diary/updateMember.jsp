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
.box-info{
	width:500px;
    border: 0;
    border-radius: 10px;
    background-color: #EEEFF1;
    padding: 20px;
    margin: 0 auto;
    height: 500px;
}
.tbl-info{
  	margin:auto;
	border-radius: 5px;
	width: 400px;
	text-align:center;
	color:#1BBC9b;
	font-size : 17px;
	height:400px;
	font-weight: bold;
}
.box-info h3{
	text-align: center;
    font-size : 20px;
    color :#1BBC9b;
    font-weight: 550;
    margin: auto;
    margin-bottom: 15px;
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
<div class="box-info">
<h3>회원정보</h3>
<form action="/diary/update" method="post">
	<table  class="tbl-info">
	
	<tr>
		<th>아이디</th>
		<td><input type="text" value="<c:out value="${member.id }"/>" readonly="readonly" name="id"></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" value="<c:out value="${member.name }"/>" name="name"></td>
	</tr>
	<tr>
		<th>전화번호</th>
		<td><input type="text" value="<c:out value="${member.phone }"/>" name="phone"></td>
	</tr>
	<tr>
		<th>이메일</th>
		<td><input type="text" value="<c:out value="${member.email }"/>" name="email"></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="변경하기" class="btn-default">
			<input type="button" value="회원 탈퇴" onclick="location.href='/diary/identify?id=<c:out value="${member.id }"/>'"   class="btn-default">
		</td>
	</tr>
	</table>
</form>
</div>
</body>
</html>