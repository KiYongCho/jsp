package jspbasic.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;

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
			
			String fileName = extractFileName(part); // 파일명
			InputStream is = null; // 업로드한 파일을 바이트단위로 읽는 스트림
			FileOutputStream fos = null; // 서버의 파일에 바이트단위로 쓰는 스트림
			
			if (fileName!=null && !fileName.isEmpty()) {
				
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












