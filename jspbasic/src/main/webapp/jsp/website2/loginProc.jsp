<%@page import="jspbasic.model.Member"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<jsp:useBean id="member" class="jspbasic.model.Member" />
<jsp:setProperty name="member" property="*" />

<%
	Member mem = (Member)pageContext.getAttribute("member");

	// 아이디/비밀번호 일치여부 확인
	if (mem.getMid().equals("hong") && mem.getMpass().equals("1234")) {
		session.setAttribute("sid", mem.getMid());
		session.setAttribute("sname", "홍길동");
	}
	
	response.sendRedirect("main.jsp");		
%>





