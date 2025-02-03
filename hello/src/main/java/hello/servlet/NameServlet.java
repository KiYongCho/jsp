package hello.servlet;

import java.io.IOException;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class NameServlet extends HttpServlet {
	
	private String nation;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		// 서블릿 초기화 파라미터 : 서블릿 초기화 시 사용할 변수 (web.xml의 servlet 설정 시 등록)
		nation = config.getInitParameter("nation");
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		print(request);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		print(request);
	}
	
	private void print(HttpServletRequest request) {
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		System.out.println(nation + "국적의 " + name + "님의 나이는 " + age + "살입니다!");		
	}

} // class









