package hello.servlet;

import java.io.IOException;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// 서블릿 생명주기 (Servlet Lifecycle)
// 1. init : 서블릿 초기화, 서블릿 최초 호출 시 한번만 실행
// 2. service : 서블릿 초기화 후 서비스 요청시 마다 실행
// 3. destroy : 서블릿 종료시 (서버 셧다운)

// HttpServlet을 상속받은 서블릿 클래스
public class HelloServlet extends HttpServlet {
	
	// 서블릿 초기화 메소드
	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("서블릿이 초기화 됨!");
	}
	
	// 서블릿 서비스 메소드
//	@Override
//	protected void service(HttpServletRequest request, HttpServletResponse response)
//		throws ServletException, IOException {
//		System.out.println("서블릿 서비스~");
//	}
	
	// 서블릿 서비스 메소드 : GET 요청 시
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGet 호출 됨!");
	}
	
	// 서블릿 서비스 메소드 : POST 요청 시
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doPost 호출 됨!");
	}
	
	// 서블릿 소멸 메소드
	@Override
	public void destroy() {
		System.out.println("서블릿이 소멸 됨!");
	}

} // class












