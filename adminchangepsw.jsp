<%@ page import="java.sql.*" %>
<%
	String oldpassword = request.getParameter("oldpassword");
	String password = request.getParameter("password");
	String cpassword = request.getParameter("cpassword");

try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","");  
			 
			Statement stmt=con.createStatement();  
			int i=0;
			i=stmt.executeUpdate("update adminsignup set password='"+password+"',cpassword='"+cpassword+"' where password='"+oldpassword+"' "); 
			if(i!=0)
			{
				out.println("Changed Password");
			}
			else
			{
				out.println("Wrong Oldpassword ");
			}
			con.close();  
		}
		



		catch(Exception e)
		{
			 out.println(e);
		}  

%>