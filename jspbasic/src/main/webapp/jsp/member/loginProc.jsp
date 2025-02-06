<%@page import="jspbasic.model.Member"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%-- pageContext.setAttribute("member", new Member()) 과 같은 코드 --%>
<jsp:useBean id="member" class="jspbasic.model.Member" scope="page" />
<jsp:setProperty name="member" property="*" />

<%--
	Member mem = (Member)pageContext.getAttribute("member");
	out.print("아이디 : " + mem.getMid()+"<br>");
	out.print("비밀번호 : " + mem.getMpass()+"<br>");
	out.print("이름 : " + mem.getMname()+"<br>");
	out.print("나이 : " + mem.getMage()+"<br>");
--%>

<%
	Member mem = (Member)pageContext.getAttribute("member");

	// 로그인 신청한 회원의 정보를 DB에서 조회한 후
	// 해당 회원의 아이디랑 비밀번호가 일치하면 아래 단계를 수행
	// 그렇지 않으면 다시 로그인 로그인 폼으로 돌려보냄
	// response.sendRedirect("loginForm.jsp");

	// 세션의 속성변수에 DB에서 가져온 사용자의 정보를 저장
	session.setAttribute("mid", mem.getMid());
	session.setAttribute("mname", mem.getMname());
	session.setAttribute("mage", mem.getMage());

	out.print(session.getAttribute("mid") + "(" 
		+ session.getAttribute("mname") + ")님 로그인 하심!<br>");
%>

<button onclick="location.href='logout.jsp';">로그아웃</button>











