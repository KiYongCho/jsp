<%@ page contentType="text/html; charset=UTF-8"%>

<a href="/name?name=홍길동&age=30">GET요청</a>

<br>

<form action="/name" method="POST">
	이름 : <input type="text" name="name"><br>
	나이 : <input type="text" name="age"><br>
	<input type="submit">
</form>