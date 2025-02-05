<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>surver2.jsp</title>
</head>
<body>
<form action="survey2proc.jsp" method="post">
<input type="hidden" name="name" value='<%=request.getParameter("name")%>'>
<p>취미를 선택하세요!</p>
<p>
	<input type="checkbox" name="hobby" value="game"> 게임&nbsp;
	<input type="checkbox" name="hobby" value="youtube"> 유튜브시청&nbsp;
	<input type="checkbox" name="hobby" value="sleeping"> 잠자기
</p>
<p><input type="submit" value="다음"></p>
</form>
</body>
</html>