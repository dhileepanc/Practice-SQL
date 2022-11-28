package jdbc1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.ListIterator;

public class Databse1 {
	
	static final String JDBC_DRIVER="com.mysql.cj.jdbc.Driver"; //not necessary
	static final String JDBC_URL = "jdbc:mysql://localhost:3306";  // Database URL
	static final String User_Name ="root"; // Database username 
	static final String Password ="1234";  // database password
	static final String Database="Employees"; // database name
	static final String Table1="EmployeeDetails"; // table1 name 
	
	// table1 columns
	static final String Table1_columns ="(ID int not null auto_increment primary key, Name varchar(25) not null, Department varchar(20) not null, Contact_No varchar(12) not null, City varchar(20))";
	
	// to view our table datas
	static final String viewTable1="Select * from "+Table1;
	// connection query
	Connection con;
	
	
	// if you want to delete database call the method 
	void dropDatabase()
	{
		
		try {
			
			// connection created 
			con = DriverManager.getConnection(JDBC_URL,User_Name,Password);
			
			//execute query
			Statement stmt1=con.createStatement();
			
			// delete database query
			String s5="Drop database "+Database;
			
			//execute on database
			stmt1.executeUpdate(s5);
			
			System.out.println("Database deleted");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	
	public void Databse1() throws ClassNotFoundException {
		try {
			// getClass().forName(JDBC_DRIVER);
			
			 con = DriverManager.getConnection(JDBC_URL,User_Name,Password);
			Statement stmt=con.createStatement();
			
			// database create query
			String s1="create database "+Database;
			stmt.executeUpdate(s1);
			
			// table creation query
			String s2="create table "+Database+"."+Table1+Table1_columns;
			stmt.executeUpdate(s2);
			
			//must use this use database query for selecting database
			String s3="use "+Database;
			stmt.executeUpdate(s3);
			
			//insert data into the table 
			String s4="insert into "+Database+"."+Table1+ " (Name,Department,Contact_No,City)values('Dhileepan','Mechanical',8682817160,'Vadipatti'),('Vinoth','Mechanical',8682817160,'Usilai'),('Surya','ComputerScience',8682817160,'Alangai'),('Ragul','ECE',9578790946,'Vadipatti')";
			stmt.executeUpdate(s4);
			
			// get the data from table 	
			ResultSet empdetails = stmt.executeQuery(viewTable1);
			
//			System.out.println("ID "+"Name"+"Department"+"Contact no"+"City");
			while(empdetails.next())
			{
				System.out.println(empdetails.getInt(1)+" "+empdetails.getString(2)+" "+empdetails.getString(3)+" "+empdetails.getString(4)+" "+empdetails.getString(5));
			}
			//			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	


	public static void main(String[] args) throws ClassNotFoundException {
		
				Databse1 db1=new Databse1();
				db1.dropDatabase();
				db1.Databse1();
		
	}

}
