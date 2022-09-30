package com.kiran.runn;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class Employee {
	private int id;
	private String name;
	public static void main(String[] args) {
		Employee e = new Employee();
		e.setId(0);
	}
}



