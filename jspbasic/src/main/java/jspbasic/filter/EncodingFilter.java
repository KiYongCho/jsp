package jspbasic.filter;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;

public class EncodingFilter implements Filter {
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("EncodingFilter 초기화!");
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) {
		
		try {
			// POST방식 요청시 인코딩 설정
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException usee) {
			usee.printStackTrace();
		}
		
		System.out.println("EncodingFilter doFilter 호출!");
		
		try {
			chain.doFilter(request, response);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	@Override
	public void destroy() {
		System.out.println("EncodingFilter 소멸!");
	}

}











