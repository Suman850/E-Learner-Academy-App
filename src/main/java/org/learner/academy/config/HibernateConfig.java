package org.learner.academy.config;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.learner.academy.entity.Classes;
import org.learner.academy.entity.Student;
import org.learner.academy.entity.Subject;
import org.learner.academy.entity.Teacher;

public class HibernateConfig {
	static SessionFactory sessionFactory = null;

	public static SessionFactory buildSessionFactory() {

		if (sessionFactory != null) {
			return sessionFactory;
		}

		Configuration config = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Classes.class)
				.addAnnotatedClass(Teacher.class).addAnnotatedClass(Student.class).addAnnotatedClass(Subject.class);

		ServiceRegistry reg = new ServiceRegistryBuilder().applySettings(config.getProperties()).buildServiceRegistry();
		sessionFactory = config.buildSessionFactory(reg);

		return sessionFactory;
	}
}
