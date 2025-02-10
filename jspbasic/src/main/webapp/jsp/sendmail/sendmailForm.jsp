<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>메일보내기</title>
<style>
input[name='subject'] { width: 400px; }
textarea { width: 400px; height: 400px; }
</style>
</head>
<body>
<h3>메일보내기</h3>
<form action="/sendmail" method="post" enctype="multipart/form-data">
	발신자 이메일 : <input type="text" name="sender"><br>
	수신자 이메일 : <input type="text" name="receiver"><br>
	제목 : <input type="text" name="subject"><br>
	내용 : <textarea name="content"></textarea><br>
	첨부파일 : <input type="file" name="attachfile"><br><br>
	<input type="submit" value="메일보내기">
</form>
</body>
</html>