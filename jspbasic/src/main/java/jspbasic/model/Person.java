package jspbasic.model;

import java.io.Serializable;

/*
	Javabeans (자바빈즈) 규약 : 자바에서 데이터를 추상화한 클래스/객체
	                                      =Data Object(DO), =Value Object(VO), Data Transfer Object(DTO) 
	1. public 클래스 (필수)
	2. Serializable 인터페이스 구현 (선택)
	3. private static final long serialVersionUID 상수 정의 (선택)
	4. private 멤버변수 (필수)
	5. public 기본생성자 (필수)
	6. public 파라미터 있는 생성자 (선택)
	7. public getter/setter (필수)
	8. toString 오버라이딩 (선택)
 */

// Serializable인터페이스를 구현한 public클래스
public class Person implements Serializable {

	// 직렬화버젼ID를 생성
	private static final long serialVersionUID = 3248957892374938L;
	
	// private 멤버변수
	private String name;
	private int age;

	// public 기본생성자
	public Person() {
	}

	// 파라미터 있는 생성자	
	public Person(String name, int age) {
		this.name = name;
		this.age = age;
	}
	
	
	// public getter / setter	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	// Obejct의 toString을 오버라이딩
	
	@Override
	public String toString() {
		return "Person [name=" + name + ", age=" + age + "]";
	}
	
} // class



















