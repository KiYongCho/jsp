package jspbasic.listener;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;

/*
JSP Listener

- 어플리케이션에 이벤트가 발생하면 수행할 코드를 정의

- 해당 Listener 인터페이스를 구현하고 인터페이스를 메소드를 오버라이딩하여 사용

- web.xml 리스너를 등록

- ServletContextListener : 웹어플리케이션이 시작되거나 종료될때 이벤트 처리
  contextInitialized(ServletContextEvent event) : 웹어플리케이션이 시작될때 실행
  contestDestroyed(ServletContextEvent event) : 웹어플리케이션이 종료될때 실행
  
- HttpSessionListener : 세션이 생성되거나 소멸될때 이벤트 처리
  sessionCreated(HttpSessionEvent event) : 세션이 생성될때 실행
  sessionDestroyed(HttpSessionEvent event) : 세션이 종료될때 실행
  
- ServletRequestListener : 요청이 생성되거나 종료될때 이벤트 처리
  requestInitialized(ServletRequestEvent event) : 요청 초기화시 실행
  requestDestoyed(ServletRequestEvent event) : 요청 종료될시 실행
  
- ServletContextAttributeListener : 어플리케이션 속성변수 추가, 삭제, 대체될때 실행
  attributeAdded(ServletContextAttributeEvent event) : 속성변수 추가
  attributeRemoved(ServletContextAttributeEvent event) : 속성변수 삭제
  attributeReplaced(ServletContextAttributeEvent event) : 속성변수 대체
  
- SessionAttributeListener : 세션 속성변수 추가, 삭제, 대체될때 실행
  attributeAdded(HttpSessionBindingEvent event) : 속성변수 추가
  attributeRemoved(HttpSessionBindingEvent event) : 속성변수 삭제
  attributeReplaced(HttpSessionBindingEvent event) : 속성변수 대체
*/

public class ApplicationListener implements ServletContextListener {
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("어플리케이션 초기화!");
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("어플리케이션 종료!");
	}

}

















