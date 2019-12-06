<%@ page import="java.sql.*" %>
<%
	String enrollment=(String)session.getAttribute("enrollment");
	String password=(String)session.getAttribute("password");
	if(enrollment!=null)
	{
			String return1="YES";
			String n="";
			String p="";
			String c="";
			String d="";
			String e="";
			String f="";
			String g="";
			String h="";
		try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root",""); 
			 
			Statement stmt=con.createStatement();  
			ResultSet rs=stmt.executeQuery("select * from bookissue where return1='"+return1+"' and enrollment1='"+enrollment+"'");   
			out.println("<center>");
			out.println("<table border='2 solid red'>");
				out.println("<tr style='background:blue'>");
					out.println("<th>");
						out.println("Enrollment Number");
					out.println("</th>");
					out.println("<th>");
						out.println("Book Name");
					out.println("</th>");
					out.println("<th>");
						out.println("Author");
					out.println("</th>");
					out.println("<th>");
						out.println("SSN Number");
					out.println("</th>");
					out.println("<th>");
						out.println("Issue Date");
					out.println("</th>");
					out.println("<th>");
						out.println("Issue Time");
					out.println("</th>");
					out.println("<th>");
						out.println("Return Date");
					out.println("</th>");
					out.println("<th>");
						out.println("Return Time");
					out.println("</th>");
					out.println("</tr>");
				
			while(rs.next())  
			{
				n=rs.getString("enrollment1");
				p=rs.getString("bookname");
				c=rs.getString("author");
				d=rs.getString("ssn");
				e=rs.getString("date1");
				f=rs.getString("time1");
				g=rs.getString("rdate1");
				h=rs.getString("rtime1");
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
				out.println(e);
				out.println("</td>");
				out.println("<td>");
				out.println(f);
				out.println("</td>");
				out.println("<td>");
				out.println(g);
				out.println("</td>");
				out.println("<td>");
				out.println(h);
				out.println("</td>");
				out.println("</tr>");
			}
			out.println("</table>");
			out.println("</center>");
			con.close();  
		}
		catch(Exception ex)
		{
			 System.out.println(ex);
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
					background:black;
					text-align:center;
			}
			td
			{
				width:220px;	
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