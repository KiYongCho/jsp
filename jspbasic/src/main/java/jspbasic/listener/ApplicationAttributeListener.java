package jspbasic.listener;

import java.util.Enumeration;

import jakarta.servlet.ServletContextAttributeEvent;
import jakarta.servlet.ServletContextAttributeListener;

public class ApplicationAttributeListener implements ServletContextAttributeListener {
	
	@Override
	public void attributeAdded(ServletContextAttributeEvent event) {
		System.out.println("어플리케이션 속성변수 추가!");
	}
	
	@Override
	public void attributeRemoved(ServletContextAttributeEvent event) {
		System.out.println("어플리케이션 속성변수 삭제!");
	}
	
	@Override
	public void attributeReplaced(ServletContextAttributeEvent event) {
		System.out.println("어플리케이션 속성변수 값 대체!");
	}

}






