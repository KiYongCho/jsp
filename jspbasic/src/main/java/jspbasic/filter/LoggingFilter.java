package jspbasic.filter;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;

/*
JSP Filter
- 요청과 응답을 가로채서 특정 작업을 수행
- 인증, 로깅, 인코딩, 데이터 압축, 암호화 등등
- jakarta.servlet.Filter 인터페이스를 구현해서 사용자정의필터를 생성함
- web.xml에 어플리케이션에서 사용하는 필터를 등록해야 함
- init(FilterConfig config) : 필터 초기화 시 한번만 호출
- FilterConfig : 필터 환경정보 객체
- doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
  : 필터의 작업을 정의하는 메소드, 필터 수행시마다 호출
- destroy() : 필터가 소멸될 때 한번 호출 
 */

public class LoggingFilter implements Filter {
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("LoggingFilter 초기화!");
		String name = filterConfig.getInitParameter("name");
		System.out.println("name 초기화 파라미터 값 : " + name);
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("LoggingFilter doFilter 호출!");
		
		// filter chain (LoggingFilter > EncodingFilter)
		chain.doFilter(request, response);
	}
	
	@Override
	public void destroy() {
		System.out.println("LoggingFilter 소멸!");
	}

}




















