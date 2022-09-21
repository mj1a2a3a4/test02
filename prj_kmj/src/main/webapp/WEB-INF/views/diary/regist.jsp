<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    background-color:  #1BBC9b;
}
h1{
    font-size : 40px;
    color : #fff;
    text-transform: uppercase;
    font-weight: 555; /* 글자 굵기 */
    text-align: center;
    margin-bottom: 15px;
}
h1 a{
    text-decoration: none;
    color : #fff;
}

.regist-form{
    width:500px;
    border: 0;
    border-radius: 5px;
    background-color: #EEEFF1;
    padding: 20px;
    margin: 0 auto;
}
.regist-form h3{
    text-align: center;
    font-size : 20px;
    color :#1BBC9b;
    font-weight: 550;
    margin: auto;
    margin-bottom: 15px;
}
.text-field{
    font-size: 14px;
    margin-bottom: 25px;
    border: none;
    border-radius: 5px;
    padding: 10px;
    width: 100%;
}
.submit-btn{
    color: #EEEFF1;
    font-size: 14px;
    background-color: #1BBC9b;
    margin-bottom: 10px;
    padding: 10px;
    border: none;
    border-radius: 5px;
    width: 100%;
}
.chk{
    text-align: center;
    padding: 15px;
    padding-top : 0px;
    font-size: 14px;
    
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btn_idCheck").on("click",function(){
		$.ajax({
			url:"/diary/idCheck?id=" + $("input[name='id']").val(),
			type : "post",
			dataType : "text",
			success : function(data){
				alert(data);
			}
		});
	});
});
</script>
<body>
<h1><a href="/diary/list">BOOK DIARY</a></h1>
<div class="regist-form">
    <h3>회원가입</h3>
    <form action="/diary/registSubmit" method="post">
        <input type="text" placeholder="아이디" class="text-field" name="id">
        
        <input type="password" placeholder="비밀번호" class="text-field" name="pw">
        
        <input type="text" placeholder="이름" class="text-field" name="name">
        
        <input type="text" placeholder="전화번호" class="text-field" name="phone">
        
        <input type="email" placeholder="E-MAIL" class="text-field" name="email">
        <div class="chk"><input type="checkbox" >이메일 수신 동의</div>
		<input type="button" class="submit-btn" value="아이디 중복조회" id="btn_idCheck">
        <input type="submit" value="회원가입" class="submit-btn">
    </form>
</div>
</body>
</html>
