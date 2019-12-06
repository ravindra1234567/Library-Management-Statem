<%@ page import="java.sql.*" %>
<%
	String enrollment=(String)session.getAttribute("enrollment");
	String password=(String)session.getAttribute("password");
	if(enrollment!=null)
	{
		//out.println("Welcome "+enrollment+" "+password+"<br>");
		//out.println("<br><a href='studentrecord.jsp'>View Result</a>");
		//out.println("<br><a href='detail.jsp'>View Detail</a>");
	
	
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
			
			ResultSet rs=stmt.executeQuery("select * from bookissue where enrollment1='"+enrollment+"'");   
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
						out.println("Date");
					out.println("</th>");
					out.println("<th>");
						out.println("Time");
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
			response.sendRedirect("getdetail.html");
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
					background:black;
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