package org.learner.academy.entity;

import java.util.ArrayList;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Classes {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "class_id")
	private int classId;

	@Column(name = "class_name")
	private String className;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "course")
	private List<Student> students = new ArrayList<Student>();

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "course")
	private List<Subject> subjects = new ArrayList<Subject>();

	public int getClassId() {
		return classId;
	}

	public void setClassId(int classId) {
		this.classId = classId;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public List<Student> getStudents() {
		return students;
	}

	public void setStudents(List<Student> students) {
		this.students = students;
	}

	public List<Subject> getSubjects() {
		return subjects;
	}

	public void setSubjects(List<Subject> subjects) {
		this.subjects = subjects;
	}

	@Override
	public String toString() {
		return "Classes [classId=" + classId + ", className=" + className + ", students=" + students + ", subjects="
				+ subjects + "]";
	}

}
