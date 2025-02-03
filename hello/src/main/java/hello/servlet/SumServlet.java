package hello.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SumServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		
		int sum = Integer.parseInt(num1) + Integer.parseInt(num2);
		
		// 콘솔에 출력
		System.out.println("두 수의 합은 " + sum + "입니다!");
		
		// 클라이언트에 출력
		PrintWriter pw = response.getWriter();
		pw.write("<!DOCTYPE html>");
		pw.write("<html>");
		pw.write("<head>");
		pw.write("<meta charset='utf-8'>");
		pw.write("<title>두 수의 합 구하기</title>");
		pw.write("</head>");
		pw.write("<body>");
		pw.write("<p>두 수의 합은 " + sum + "입니다!</p>");
		pw.write("</body>");
		pw.write("</html>");
		pw.flush();
		pw.close();
		
	}
	
} // class





