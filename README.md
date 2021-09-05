# E-Learner-Academy-App
An online educational institute management system made with Java, JSP and Hibernate
E-learner-Academy-App
Developed by Suman Gayen
sumangayen588@gmail.com

Learner’s Academy was divided in 3 sprints of 1 week each.
Sprint 1: -
•	Initialized the project, made it a maven project and added dependencies: - MySql connector, Hibernate, JSTL, Servlet API.
•	Made E.R. diagram for database and entities relationship.
•	Made classes for entities and established relationship between them.
•	Configured hibernate and mapped classes as entities.
•	Populated the data by hibernate 
  Sprint 2: -
•	Planned the structure of the website and navigation across it.
•	Made a Hibernate util. class to use it across the servlets.
•	Made servlets for each class list and set up navigation link for them.
•	Made a common View page for each class’s view rendering.
•	Made the header and footer jsp pages to include it across every page
•	Made an error page error.jsp and set it as the error page by whole website by including it in the header tag.
 Sprint 3: -
•	Made the master list JSP for Teachers, Students and Subjects.
•	Set up Servlets for each of the master list to send data as a list.
•	Made styles.css for applying styles throughout the website. 
•	Modified the navigation with the help of button’s and added the navigation to home page in the Header Tag.
•	Revamped and modified the structure of the data rendering with the additional styles and best practices.




Classes: -
There were 4 entity classes named Subject, Student, Teacher and Classes. And, there was a test class for populating the data and see the working of it and a hibernate utility class which has a method to give SessionFactory object.
    
1.	HibernateUtil class
2.	Test class
3.	Entity: -
•	Student class
•	Subject class
•	Teacher class
•	Classes class
Servlets: -
•	JavaController: - to send the list of objects of class 1 named as java fullstack to show-class.jsp (mapped for: - /java-full-stack )
•	DotNetController: - to send the list of objects of class 2 named as DotNet fullstack to show-class.jsp (mapped for: - /DotNet-full-stack )
•	PhpController: - to send the list of objects of class 3 named as Php fullstack to show-class.jsp (mapped for: - /php-full-stack )
•       PythonController: - to send the list of objects of class 4 named as Python fullstack to show-class.jsp (mapped for: - /python-full-stack )
•	StudentController: - Master list of students, sends object of List of students to student.jsp (mapped for: - /students )
•	TeacherController: - Master list of Teachers, sends object of List of Teachers to Teacher.jsp (mapped for: - /teachers)
•	SubjectController: - Master list of Subjects, sends object of List of Subjects to Subjects.jsp (mapped for: - /subjects )

JSP: -
•	index.jsp: - A JSP for showing the home page in which all the navigation links has been set for to get any JSP.
•	header.jsp: - Includes the header and link to the css style sheet to be included in other JSPs
•	footer.jsp: - A footer text with copyright mark and details of the developer to be included in other JSPs
•	show-class.jsp: - A common view JSP for all the classes details controlled by JavaController, JavaScriptController and PythonController. Depending on the link user chooses to follow on the home page. The different servlets will send different list of objects of students, subjects and teachers which can be dynamically displayed in this JSP. Request made on /java-full-stack, /javaScript-full-stacks and /python-full-stack is forwarded to this JSP.
•	Students.jsp: - View for master list of students in a tabular manner handled by the StudentController servlet by /students.
•	Subjects.jsp: - View for master list of subjects in a tabular manner handled by the SubjectsController servlet by /subjects.
•	Teachers.jsp:- View for master list of teachers in a tabular manner handled by the TeacherController servlet by /teacher.
•	Error.jsp:- isErrorPage is true and set as the errorpage in Header.jsp so it can be included in every other pages.

CSS file: -
styles.css is a file for all the style sheet across the website embedded in header.jsp so it can be included in entire website. 
Nav Links: -
•	/java-full-stack (for getting details of Class 1 named as Java full stack)   
•	/DotNet-full-stack (for getting details of Class 2 named as DotNet full stack)  
•	/php-full-stack (for getting details of Class 3 named as php full stack)
•        /python-full-stack (for getting details of Class 4 named as python full stack)
•	/teachers (master list of teachers)
•	/students (master list of students)
•	/subjects (master list of subjects)
•	Index.jsp (Embedded in the Header’s text to get to the home page)


Core concepts, tools and technologies
The project was majorly based on concepts of servlets, JSP, JPA, hibernate and Sql database. The project was made using maven and is hosted on tomcat server for rendering the website. Servlets were used as controllers to give jsp the modal to render the view of the website. Hibernate was used as an ORM to map the entities with the relationship defined in the E.R diagram above. The interfaces used to use hibernate was Session and SessionFactory and hibernate was configured to use MySql in hibernate.cfg.xml. Entities were Pojo classes marked as entities by JPA annotations. Collection interface such as List and ArrayList class was used to iterate over the database list given by the hibernate ORM. 


