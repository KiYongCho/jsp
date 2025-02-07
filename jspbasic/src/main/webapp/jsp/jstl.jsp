<%--
JSTL (JSP Standard Tag Library) : JSP에서 사용하는 표준 태그 라이브러리

* 종류
1) core (c, jakarta.tags.core)
set, remove, if, choose, forEach, forTokens, import, redirect, url, catch, out
2) format (fmt, jakarta.tags.fmt)
setLocale, requestEncoding, bundle, message, setBundle,
fromatNumber, formatDate, parseNumber, parseDate, seTimeZone, timeZone
3) functions (fn, jakarta.tags.functions)
- length : 길이
- toUpperCase : 대문자로
- toLowerCase : 소문자로
- substring : 부분문자열 추출
- trim : 앞뒤 공백문자 제거
- replace : 문자열 대체
- indexOf : 문자열의 인덱스
- startsWith : 어떤 문자열로 시작하는지
- endsWith : 어떤 문자열로 끝나는지
- contains : 문자열을 포함하고 있는지
- containsIgnoreCase : 대소문자 구별없이 문자열을 포함하고 있는지
- split : 기준문자열로 잘라서 문자열로 배열 생성
- join : 배열의 요소들을 붙여서 문자열을 생성
- escapeXml : 태그를 태그로 인식할지 여부
--%>

<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>

<%-- 변수 설정 --%>
<c:set var="v" value="1" />

<%-- 변수 출력 --%>
<c:out value="${v}" /><br>

<%-- 변수 제거 --%>
<c:remove var="v" />

<%-- 변수 출력 --%>
<c:out value="${v}" /><br>

<%-- 조건문 --%>
<c:set var="v1" value="3" />
<c:set var="v2" value="5" />
<c:if test="${v1>v2}">
	<c:out value="v1이 v2보다 큽니다!" /><br>
</c:if>
<c:if test="${!v1>v2}">
	<c:out value="v1이 v2보다 크지 않습니다!" /><br>
</c:if>
${v1>v2 ? "v1이 v2보다 큽니다!" : "v1이 v2보다 크지 않습니다!"}<br>

<%-- choose when otherwise --%>
<c:set var="v3" value="2" />
<c:choose>
	<c:when test="${v3==1}">
		<c:out value="v3는 1입니다!" />
	</c:when>
	<c:when test="${v3==2}">
		<c:out value="v3는 2입니다!" />
	</c:when>
	<c:otherwise>
		<c:out value="v3는 1도 2도 아닙니다!" />
	</c:otherwise>
</c:choose>
<br>

<%--
forEach 반복문
- var : 반복변수
- begin : 반복시작값
- end : 반복종료값
- varStatus : 반복상태변수
- step : 스텝
- items : 배열, 리스트 등 반복대상
--%>
<c:forEach var="i" begin="1" end="10" varStatus="stat" step="2">
	i변수 값 : <c:out value="${i}" /><br>
	반복회수 : <c:out value="${stat.count}" /><br><br>
</c:forEach>

<c:set var="arr" value="${[1, 2, 3, 4, 5]}" />
<c:forEach var="ele" items="${arr}" varStatus="stat">
	i변수 값 : <c:out value="${ele}" /><br>
	반복인덱스 : <c:out value="${stat.index}" /><br>	
	반복회수 : <c:out value="${stat.count}" /><br><br>
</c:forEach>

<!-- 실습 : 구구단 만들기 -->
<c:forEach var="i" begin="2" end="9">
	<c:forEach var="j" begin="1" end="9">
		<c:out value="${i} * ${j} = ${i*j}" /><br>
	</c:forEach>
</c:forEach>

<%--
forTokens
var : 토큰 저장할 변수
items : 토크나이징 대상 문자열
delims : 구분자
 --%>
<c:forTokens var="token" items="010-1234-5678" delims="-">
	<c:out value="${token}" /><br>
</c:forTokens>

<%-- url 생성시 사용 --%>
<c:url var="url" value="https://www.google.com">
	<c:param name="name" value="홍길동" />
	<c:param name="age" value="30" />
</c:url>
<c:out value="${url}" /><br><br>

<%-- url 코드 획득시 사용 --%>
<%--c:import var="google" url="https://www.google.com" />
<c:out value="${google}" />
<c:import var="posts" url="https://jsonplaceholder.typicode.com/posts" />
<c:out value="${posts}" /><br><br%-->

<%-- 다른페이지로 리다이렉션시 사용 --%>
<%--c:redirect url="/jsp/el.jsp" /--%>

<%-- 로케일 설정 --%>
<fmt:setLocale value="ko_KR" />
<fmt:setLocale value="en_US" />

<%
	pageContext.setAttribute("now", new Date());
%>

<%-- 
타임존 설정
fmt:timeZone : 태그영역 안에서 타임존 적용을 받음
fmt:setTimeZone : 설정 후부터 타임존 적용을 받음
--%>
<fmt:timeZone value="Asia/Seoul">
	<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" /><br>
</fmt:timeZone>

<fmt:timeZone value="America/New_York">
	<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" /><br>
</fmt:timeZone>

<fmt:setTimeZone value="Europe/London" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" /><br>

<!--
setLocale, requestEncoding, bundle, message, setBundle,
formatNumber, formatDate, parseNumber, parseDate, seTimeZone, timeZone
-->

<%-- 요청데이터 인코딩 --%>
<fmt:requestEncoding value="utf-8" />

<%-- 
fmt:bundle : properties 파일 사용시, 태그 안에서만
basename : package명+properties파일명
prefix : 키 앞에 붙일 문자열

fmt:setBundle : 설정 후부터 properties 사용
--%>
<fmt:bundle basename="jspbasic.props.hong" prefix="hong_">
	<fmt:message key="name" /><br>
	<fmt:message key="age" /><br>
</fmt:bundle>

<fmt:setBundle basename="jspbasic.props.hong" />
<fmt:message key="hong_name" /><br>
<fmt:message key="hong_age" /><br>

<fmt:setLocale value="ko_KR" />
<fmt:setTimeZone value="Asia/Seoul" />

<%-- fmt:formatNumber : 숫자 형식화 --%>
<fmt:formatNumber value="12345" pattern="00,000" /><br>
<fmt:formatNumber value="12345" pattern="000,000" /><br>
<fmt:formatNumber value="12345" pattern="00,00$" /><br>
<fmt:formatNumber value="12345" pattern="00,000원" /><br>
<fmt:formatNumber value="12345" type="currency" /><br>
<fmt:formatNumber value="12345" type="percent" /><br>

<%-- fmt:parseNumber : 숫자타입으로 변환 --%>
<fmt:parseNumber value="12345" pattern="00000" /><br>

<%-- fmt:formatDate : 날짜 형식화 --%>
<c:set var="now" value="<%=new Date()%>" />
<fmt:formatDate value="${now}" type="time" /><br>
<fmt:formatDate value="${now}" type="date" /><br>
<fmt:formatDate value="${now}" type="both" /><br>
<fmt:formatDate value="${now}"
	pattern="yyyy년 MM월 dd일 HH시 mm분 ss초" /><br>

<%-- fmt:parseDate : 날짜타입으로 변환 --%>
<fmt:parseDate var="pd" value="2025년  01월 01일 00시 00분 00초" 
	pattern="yyyy년 MM월 dd일 HH시 mm분 ss초" /><br>
<fmt:formatDate value="${pd}" pattern="yyyy-MM-dd HH:mm:ss" /><br>	

<!-- 
3) functions (fn, jakarta.tags.functions)
- length : 길이
- toUpperCase : 대문자로
- toLowerCase : 소문자로
- substring : 부분문자열 추출
- trim : 앞뒤 공백문자 제거
- replace : 문자열 대체
- indexOf : 문자열의 인덱스
- startsWith : 어떤 문자열로 시작하는지
- endsWith : 어떤 문자열로 끝나는지
- contains : 문자열을 포함하고 있는지
- containsIgnoreCase : 대소문자 구별없이 문자열을 포함하고 있는지
- split : 기준문자열로 잘라서 문자열로 배열 생성
- join : 배열의 요소들을 붙여서 문자열을 생성
- escapeXml : 태그를 태그로 인식할지 여부
-->

<c:set var="str" value="   Hello JSP   " />
<c:out value="${fn:length(str)}" /><br>
<c:out value="${fn:toUpperCase(str)}" /><br>
<c:out value="${fn:toLowerCase(str)}" /><br>
<c:out value="${fn:substring(str, 3, 8)}" /><br>
<c:out value="${fn:trim(str)}" /><br>
<c:out value='${fn:replace(str, "Hello", "Hi")}' /><br>
<c:out value='${fn:indexOf(str, "JSP")}' /><br>
<c:out value='${fn:startsWith(str, "JSP")}' /><br>
<c:out value='${fn:endsWith(str, "JSP")}' /><br>
<c:out value='${fn:contains(str, "JSP")}' /><br>
<c:out value='${fn:containsIgnoreCase(str, "jsp")}' /><br>

<%--
fn:split : 문자열 > 배열
fn:join : 배열 > 문자열
--%>
<c:set var="str2" value="1,2,3,4,5" />
<c:set var="arr" value='${fn:split(str2, ",")}' />
<c:set var="str3" value='${fn:join(arr,"")}' />
<c:out value="${str3}" />

<%--
fn:escapeXml : 태그를 해석하지 않고 태그 자체로 표시
--%>
<c:set var="html" value="<hr><p>하이룽!</p><hr>" />
<c:out value="${html}" escapeXml="false" /><br>
${html}
<c:out value="${html}" escapeXml="true" /><br>
${fn:escapeXml(html)}



























