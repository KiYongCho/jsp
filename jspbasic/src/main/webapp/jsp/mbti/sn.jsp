<%@ page contentType="text/html; charset=UTF-8"%>

<form name="frm" action="tf.jsp" method="post">
	<input type="hidden" name="ie" value="<%=request.getParameter("ie")%>">
	<input type="radio" name="sn" value="S"> S&nbsp;&nbsp;
	<input type="radio" name="sn" value="N"> N<br>
	<input type="submit" value="다음">
</form>