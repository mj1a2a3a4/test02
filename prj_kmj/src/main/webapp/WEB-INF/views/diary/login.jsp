<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("id")!= null){ %>
<script>
	alert('이미 로그인 되어 있습니다.');
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
body{
    margin : 0;
    background-color:  #1BBC9b;
}
.login-form{
    width : 400px;
    border : 0;
    border-radius: 5px;
    background-color: #EEEFF1;
    padding: 20px;
    margin: 0 auto;
}

.text-field{
    font-size: 14px;
    margin-bottom: 10px;    
    border : none;
    border-radius: 5px;
    padding: 10px;
    width:100%
}
.submit-btn{
    color: #EEEFF1;
    font-size: 14px;
    background-color:  #1bbc9b;
    margin-bottom: 10px;
    padding: 10px;
    border: none;
    border-radius: 5px;
    width:100%;
}
.links{
    text-align : center;
}
.links a{
    font-size : 12px;
    color: #9B9B9B;
}
h1{
    font-size : 40px;
    color : #fff;
    text-transform: uppercase;
    font-weight: 555; /* 글자 굵기 */
    text-align: center;
    margin-bottom: 30px;
}
h1 a{
    text-decoration: none;
    color : #fff;
}
</style>
<body>
<h1><a href="/diary/list">Book Diary</a></h1>
    <div class="login-form">
        <form action="/diary/loginForm" method="post">
            <input type="text" placeholder="아이디" name="id" class="text-field">
            <input type="password" placeholder="비밀번호" name="pw" class="text-field">
            <input type="submit" value="로그인" class="submit-btn">
        </form>
            <button type="button" class="submit-btn" onclick="location.href='/diary/regist'">회원가입</button>
        <div class="links">
            <a href="#">비밀번호를 잊어버리셨나요?</a>
        </div>
    </div>
</body>
</html>