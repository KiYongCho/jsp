<%@ page contentType="text/html; charset=UTF-8"%>

<%--
파일업로드
1. form method="post"
2. form enctype="multipart/form-data"
--%>

<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>파일업로드</title>
</head>
<body>
<h3>파일업로드</h3>
<form action="/fileupload" method="post" enctype="multipart/form-data">
	파일1 : <input type="file" name="file1"><br>
	파일2 : <input type="file" name="file2"><br>
	<input type="submit" value="전송">
</form>
</body>
</html>




















































