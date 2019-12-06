<%@ page import="java.sql.*" %>
<%
	String uname = request.getParameter("uname");
	String psw = request.getParameter("psw");

try
		{  
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
			
			Connection con=DriverManager.getConnection("jdbc:odbc:library");  
			 
			Statement stmt=con.createStatement();  
			int i=0;
			i=stmt.executeUpdate("update slogin set psw='"+psw+"' where uname='"+uname+"' and psw='"+psw+"'"); 
			if(i!=0)
			{
				out.println("Welcome"+"   => "+uname);
			}
			else
			{
				out.println("Wrong Password");
			}
			con.close();  
		}
		



		catch(Exception e)
		{
			 System.out.println(e);
		}  

%>