<%@ page contentType="text/html; charset=UTF-8"%>

<%--
	<jsp:useBean> 액션태그 (생성자 호출)
	자바클래스의 객체를 JSP에 사용하기 위한 태그
	id : 객체명
	class : 클래스 풀네임
	scope : 객체의 유효범위 (생략하면 page)
	
	<jsp:setProperty> 액션태그 (setter 호출)
	파라미터 변수의 값을 객체의 프라퍼티에 저장하기 위한 태그
	name : 객체명
	property : 프라퍼티명
	param : 파라미터명과 프라퍼티명이 다를때 파라미터명
	
	<jsp:getProperty> 액션태그 (getter 호출)
	프라퍼티의 값을 가져오기 위한 태그 
	name : 객체명
	property : 프라퍼티명
--%>

<%-- jspbasic.model.Person 타입의 객체를 생성 --%>
<jsp:useBean id="person" class="jspbasic.model.Person"/>

<%-- 생성된 Person타입의 객체 person의 setter들을 호출 --%>
<%-- 파라미터의 이름과 프라퍼티의 이름이 다른 경우는 param속성을 추가해야 함 --%>
<jsp:setProperty name="person" property="name" param="paramname"/>
<jsp:setProperty name="person" property="age" param="paramage"/>

<%-- 전체 프라퍼티를 한꺼번에 매핑하려면 property="*" --%>

<%-- 생성된 Person타입의 객체 person의 getter들을 호출 --%>
입력한 이름 : <jsp:getProperty name="person" property="name"/><br>
입력한 나이 : <jsp:getProperty name="person" property="age"/>

<%--
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	
	out.print("입력한 이름 : " + name + "<br>");
	out.print("입력한 나이 : " + age);
--%>









