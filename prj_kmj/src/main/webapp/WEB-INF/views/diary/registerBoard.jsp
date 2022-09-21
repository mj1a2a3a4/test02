<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("id")== null){ %>
<script>
	alert('로그인 후 이용가능합니다.');
	location.href='/diary/list';
</script>
<%}%>

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
    font-size: 15px;
    margin-bottom: 10px;
    border: none;
    border-radius: 5px;
    padding: 10px;
    width: 32.5%;
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
</style>
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
    <form action="" method="post" >
        <input type="text" placeholder="제목" class="title-field" name="title" >
        <input type="hidden" name="writer" readonly="readonly" value="<%=session.getAttribute("id") %>">
        <textarea placeholder="내용을 입력하세요." class="area-field" rows="27" name="content"></textarea>
        <p style="margin:10px" ><input type="file"></p>
        <input type="submit" value="등록하기" class="btn-default">
        <input type="reset" value="다시쓰기" class="btn-default">
        <input type="button" value="목록으로" class="btn-default" onclick="">
    </form>
</div>
</body>
</html>