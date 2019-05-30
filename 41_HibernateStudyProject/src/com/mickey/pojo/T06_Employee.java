package com.mickey.pojo;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "hibernate_t05_employee")
public class T06_Employee {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int eid;

	private String ename;

	@OneToOne(cascade = CascadeType.ALL) 
	@JoinColumn(name = "did")
	private T06_Department department;

	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public T06_Department getDepartment() {
		return department;
	}

	public void setDepartment(T06_Department department) {
		this.department = department;
	}

	@Override
	public String toString() {
		return "T06_Employee [eid=" + eid + ", ename=" + ename + ", department=" + department + "]";
	}

}