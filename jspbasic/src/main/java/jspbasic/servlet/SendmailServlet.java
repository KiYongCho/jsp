package jspbasic.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.util.ByteArrayDataSource;

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

public class SendmailServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		Part attachfile = request.getPart("attachfile");
		
		String sender = request.getParameter("sender");
		String receiver = request.getParameter("receiver");
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		
		// Google 계정 정보
		String username = "realchoky@gmail.com"; // 구글 계정명
		String password = "ykct okvo vmzs aqqr"; // 앱 비밀번호
		
		// SMTP 서버 설정
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true"); // SMTP서버 인증 여부
		props.put("mail.smtp.starttls.enable", "true"); // TLS서비스 사용 여부
		props.put("mail.smtp.host", "smtp.gmail.com"); // SMTP 서버
		props.put("mail.smtp.port", "587"); // SMTP 서버 포트번호
		
		// 메일세션(연결) 생성
		Session session = Session.getInstance(props, new Authenticator() {
			// 사용자 계정명, 앱 비밀번호로 사용자 인증
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});
		
		try {
			
	        // 이메일 생성
	        MimeMessage message = new MimeMessage(session);
	        message.setFrom(new InternetAddress(sender));
	        message.setRecipient(Message.RecipientType.TO, new InternetAddress(receiver));
	        message.setSubject(subject);

	        // 본문 부분
	        MimeBodyPart messageBodyPart = new MimeBodyPart();
	        messageBodyPart.setText(content);

	        // 첨부파일 처리
	        Multipart multipart = new MimeMultipart();
	        multipart.addBodyPart(messageBodyPart);

	        if (attachfile != null && attachfile.getSize() > 0) {
	            MimeBodyPart attachmentPart = new MimeBodyPart();
	            InputStream fileContent = attachfile.getInputStream();
	            String fileName = attachfile.getSubmittedFileName();
	            DataSource source 
	            	= new ByteArrayDataSource(fileContent, attachfile.getContentType());

	            attachmentPart.setDataHandler(new DataHandler(source));
	            attachmentPart.setFileName(fileName);
	            multipart.addBodyPart(attachmentPart);
	        }

	        // 최종 메시지 설정
	        message.setContent(multipart);

	        // 이메일 전송
	        Transport.send(message);
			
		} catch (MessagingException me) {
			me.printStackTrace();
		}		
		
	}

}











