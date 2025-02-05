<%@ page contentType="text/html; charset=UTF-8"%>

<form name="frm" action="result.jsp" method="post">
	<input type="hidden" name="ie" value="<%=request.getParameter("ie")%>">
	<input type="hidden" name="sn" value="<%=request.getParameter("sn")%>">
	<input type="hidden" name="tf" value="<%=request.getParameter("tf")%>">
	<input type="radio" name="pj" value="P"> P&nbsp;&nbsp;
	<input type="radio" name="pj" value="J"> J<br>
	<input type="submit" value="다음">
</form>