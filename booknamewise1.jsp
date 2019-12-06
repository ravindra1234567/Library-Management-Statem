
<html>
	<head>
	<style>
		form{
				border-style:solid;
				width:500px;
				height:310px;
				border-width:2px;
				border-color:#232451;
				padding-top-width:50px;
				border-left-width:2px;
				border-right-width:2px;
				margin-left:500px;
			}
			.xyz{background:#76bcb9;text-align:center;height:50px;}
			input{
				width:400px;
				border-radius:7px;
				height:35px;
				background:#efebe8;
				margin-left:20px;
				}
				
				
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
		
	</body>
</html>
<%@ page import="java.sql.*" %>
<%
	String bookname = request.getParameter("bookname");
	//out.println(bookname);
	//String bookname = request.getParameter("bookname");
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
			
			ResultSet rs=stmt.executeQuery("select * from addbook where bookname='"+bookname+"'"); 
			out.println("<center>");
			out.println("<table border='2 solid red' style='background-color:black'>");
				out.println("<tr style='background-color:blue;'>");
					out.println("<th style='width:300px;'>Book Name</th><th style='width:150px;'>Category</th><th style='width:280px;'>Author</th><th>SSN Number</th><th>Issue</th><th>Price</th>");
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
				out.println("<td>");
				out.println(n);
				out.println("</td>");
				out.println("<td>");
				out.println(p);
				out.println("</td>");
				out.println("<td>");
				out.println(c);
				out.println("</td>");
				out.println("<td>");
				out.println(d);
				out.println("</td>");
				out.println("<td>");
				out.println(f);
				out.println("</td>");
				out.println("<td>");
				out.println(e);
				out.println("</td>");
				out.println("</tr>");
			}
			out.println("</table>");
			out.println("/<center>");
			con.close();  
		}
		catch(Exception ex)
		{
			 out.println(ex);
		} 

%>