<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션에 저장되어 있는 값이 있을때 세션의 모든 속성 제거
	if(session.getAttribute("id") != null){
		session.invalidate(); %>
		<script>
			alert("로그아웃 되었습니다.");
			location.href='/diary/list';
		</script>
	
<%  }else if(session.getAttribute("id")==null) {%>
	<script>
		alert("로그인 상태가 아닙니다.");
		location.href='/diary/list';
	</script> 	
<%	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>