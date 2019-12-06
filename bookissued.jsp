<%@ page import="java.sql.*" %>
<%
	String adminid=(String)session.getAttribute("adminid");
	String password=(String)session.getAttribute("password");
	if(adminid!=null)
	{
			String n="";
			String p="";
			String c="";
			String d="";
			String e="";
			String f="";
		try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root",""); 
			 
			Statement stmt=con.createStatement();  
			
			ResultSet rs=stmt.executeQuery("select * from bookissue "); 
			out.println("<center>");
			out.println("<table border='2 solid red' style='background-color:black'>");
				out.println("<tr style='background-color:blue;color:white'>");
					out.println("<th>Enrollment Number</th><th style='width:300px'>Book Name</th><th style='width:300px'>Author</th><th>SSN Number</th><th>Date</th><th>Time</th>");
					out.println("</tr>");
				
			while(rs.next())  
			{
				n=rs.getString("enrollment1");
				p=rs.getString("bookname");
				c=rs.getString("author");
				d=rs.getString("ssn");
				e=rs.getString("date1");
				f=rs.getString("time1");
				out.println("<tr>");
				out.println("<td>"+n+"</td><td>"+p+"</td><td>"+c+"</td><td>"+d+"</td><td>"+e+"</td><td>"+f+"</td>");
				out.println("</tr>");
			}
			out.println("</table>");
			out.println("</center>");
			con.close();  
		}
		catch(Exception ex)
		{
			 out.println(ex);
		} 
	}
	else
	{
		response.sendRedirect("librarymanagement.html");
	}

%>
<html>
	<head>
		<style>
			tr
			{	
					height: 30px;
					font-size: 18pt;
					color:white;
       				text-align:center;
			}
			
			td
			{
				width:60px;	
			}
			td:hover
			{
				background:#ffff00;
				color:#000000;	
			}

		</style>
	</head>
	<body>
</html>