package jspbasic.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import java.util.UUID;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@MultipartConfig(
    //fileSizeThreshold = 1024 * 1024 * 2, // 최소 업로드 용량
    maxFileSize = 1024 * 1024 * 100, // 파일당 최대 업로드 용량
    maxRequestSize = 1024 * 1024 * 500 // 한번 요청에 업로드 가능한 최대 용량
)

// 파일업로드 서블릿
public class FileuploadServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 파일이 저장될 서버상의 경로
		File uploadDir = new File("D:/embededk/uploadfiles");
		
		// 디렉토리가 없다면 생성
		if (!uploadDir.exists()) uploadDir.mkdir();
		
		// Part 하나는 사용자가 업로드한 파일정보 하나		
		Collection<Part> parts = request.getParts();
		
		// 업로드한 파일 수만큼 반복
		for (Part part : parts) {
			
			// Part 정보
			System.out.println(part.getContentType()); // 컨텐트 타입 (MIME타입)
			System.out.println(part.getHeader("content-disposition")); // 컨텐트 처리 방법
			Collection<String> headerNames = part.getHeaderNames(); // 헤더명들
			for (String headerName : headerNames) {
				System.out.println(headerName);
			}
			System.out.println(part.getName()); // 파라미터명 : <input type="file" name="file1" 에서 file1
			System.out.println(part.getSize()); // 업로드한 파일의 바이트 수
			System.out.println(part.getSubmittedFileName()); // 클라이언트가 업로드한 파일이름
			
			String fileName = extractFileName(part); // 파일명
			InputStream is = null; // 업로드한 파일을 바이트단위로 읽는 스트림
			FileOutputStream fos = null; // 서버의 파일에 바이트단위로 쓰는 스트림
			
			if (fileName!=null && !fileName.isEmpty()) {
				
				// 클라이언트가 동일한 이름의 파일을 업로드하면 마지막 업로드한 파일만 서버에 존재하게 됨
				// 서버에 파일업로스시에 서버에서 관리할 파일명을 생성하는 것이 일반적
				// java.util.UUID : 고유한 16바이트 식별자 문자열을 생성함
				// UUID.randomUUID().toString();
				//String filePath = uploadDir + File.separator + UUID.randomUUID().toString(); // 파일의 서버상 경로 + 파일명
				
				String filePath = uploadDir + File.separator + fileName; // 파일의 서버상 경로 + 파일명
				
				is = part.getInputStream();
				fos = new FileOutputStream(filePath);
				
				byte[] buffer = new byte[1024]; // 버퍼
				int bytesRead = 0; // 읽은 바이트 수
				
				while ((bytesRead=is.read(buffer)) != -1) {
					fos.write(buffer, 0, bytesRead);
				}
				
				is.close();
				fos.close();
			}
		}
		
	} // doPost
	
	// 업로드한 파일명 반환 메소드
	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		for (String content : contentDisp.split(";")) {
			if (content.trim().startsWith("filename")) {
				return content.substring(content.indexOf("=")+2, content.length()-1);
			}
		}
		return null;
	}

} // class












