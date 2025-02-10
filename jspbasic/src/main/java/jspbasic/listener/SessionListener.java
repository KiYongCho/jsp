package jspbasic.listener;

import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;

public class SessionListener implements HttpSessionListener {
	
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		System.out.println("세션ID : " + se.getSession().getId());
		System.out.println("세션 생성됨!");
	}
	
	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		System.out.println("세션ID : " + se.getSession().getId());
		System.out.println("세션 소멸됨!");
	}

}
