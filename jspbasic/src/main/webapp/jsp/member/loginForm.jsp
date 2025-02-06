<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
</head>
<body>
<h3>회원 로그인</h3>
<form action="loginProc.jsp" method="post">
	아이디 : <input type="text" name="mid"><br>
	비밀번호 : <input type="password" name="mpass"><br>
	이름 : <input type="text" name="mname"><br>
	나이 : <input type="text" name="mage"><br>
	<input type="submit" value="확인">
</form>
</body>
</html>