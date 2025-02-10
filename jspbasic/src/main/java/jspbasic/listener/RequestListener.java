package jspbasic.listener;

import jakarta.servlet.ServletRequestEvent;
import jakarta.servlet.ServletRequestListener;

public class RequestListener implements ServletRequestListener {
	
	@Override
	public void requestInitialized(ServletRequestEvent sre) {
		System.out.println("요청 초기화!");
	}
	
	@Override
	public void requestDestroyed(ServletRequestEvent sre) {
		System.out.println("요청 종료!");
	}

}
