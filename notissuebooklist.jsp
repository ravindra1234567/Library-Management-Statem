<%@ page import="java.sql.*" %>
<%
	String adminid=(String)session.getAttribute("adminid");
	String password=(String)session.getAttribute("password");
	String issue = "NO";
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
			
			ResultSet rs=stmt.executeQuery("select * from addbook where issue='"+issue+"'");   
			out.println("<center>");
			out.println("<table border='2 solid red' style='background-color:black'>");
				out.println("<tr style='background-color:blue;color:white'>");
					out.println("<th style='width:300px'>Book Name</th><th style='width:150px'>Category</th><th style='width:300px'>Author</th><th>SSN Number</th><th>Issue</th><th>Price</th>");
					out.println("</tr>");
				
			while(rs.next())  
			{
				n=rs.getString("bookname");
				p=rs.getString("category");
				c=rs.getString("author");
				d=rs.getString("ssn");
				f=rs.getString("issue");
				e=rs.getString("price");
				out.println("<tr>");
					out.println("<td>"+n+"</td><td>"+p+"</td><td>"+c+"</td><td>"+d+"</td><td>"+f+"</td><td>"+e+"</td>");
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
				background:white;
				color:#000000;	
			}
			
		</style>
	</head>
	<body>
</html>