package com.drillmech.model;

import java.util.List;

public class Kiran {
private List<String> chk;
private List<String> grade;
public List<String> getChk() {
	return chk;
}
public void setChk(List<String> chk) {
	this.chk = chk;
}
public List<String> getGrade() {
	return grade;
}
public void setGrade(List<String> grade) {
	this.grade = grade;
}
@Override
public String toString() {
	return "Kiran [chk=" + chk + ", grade=" + grade + "]";
}
}
