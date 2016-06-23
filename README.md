# Telly
Spring MVC Reservation System

This is a bus or any sort of travel reservation system set up using the Spring Framework. Some of the features include creating an account, searching for trips, logging in, and booking trips. The program uses features of the Spring Framework such as Dependecy Injection and Spring Security. The program also uses Hibernate in order to do operations on the database. All of these jars are included in the pom.xml.
	
1. In order to run the program on a local server, you must add this code to the context.xml file of your Apache server. My table was called springtutorial, and my resource name is jdbc/spring. It is important that the resource name is the same as the res-ref-name attribute in the WebContent/WEB-INF/Web.xml file. More information on this can be found here: https://tomcat.apache.org/tomcat-7.0-doc/jndi-resources-howto.html#JDBC_Data_Sources
	

        	<Resource name="jdbc/spring" auth="Container" type="javax.sql.DataSource"
		maxActive="100" maxIdle="30" maxWait="10000" username="****"
		password="****" driverClassName="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/springtutorial" />


2. You must then set up the database on your system. I have included a script to create the tables in Telly.sql. Make sure that the database name is the same as the one in the url field in the code above.

3. In order to add mock trip entries to the database, you can use reservebus.jsp. Make sure the Date Leave and Date Return entries are in the YYYY-MM-DD format (2016-01-01).
