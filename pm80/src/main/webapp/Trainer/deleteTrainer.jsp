<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>*회원탈퇴*</h1>
<h2>회원탈퇴 하시려면 ID와 PW를 입력해주세요.</h2>
	<form action="deleteTrainer" method="post">
	아이디: <input type="text" name="id"><br>
	패스워드: <input type="password" name="passwd"><br>
	<input type="button" value="취소" onclick="location='mypage.jsp'"/>
	<input type="submit" value="회원탈퇴"><br>
	</form>

</body>
</html>