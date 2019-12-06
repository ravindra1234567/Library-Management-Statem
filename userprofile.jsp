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
			String g="";
		try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root",""); 
			 
			Statement stmt=con.createStatement();  
			
			ResultSet rs=stmt.executeQuery("select * from signup where enrollment='"+enrollment+"'");  
			out.println("<center>");
			out.println("<table border='2 solid red'>");
				out.println("<tr style='background:blue'>");
					out.println("<th>");
						out.println("Student Name");
					out.println("</th>");
					out.println("<th>");
						out.println("Enrollment Number");
					out.println("</th>");
					out.println("<th>");
						out.println("Father Name");
					out.println("</th>");
					out.println("<th>");
						out.println("Mobile");
					out.println("</th>");
					out.println("<th>");
						out.println("Address");
					out.println("</th>");
					out.println("<th>");
						out.println("Email");
					out.println("</th>");
					out.println("<th>");
						out.println("Password");
					out.println("</th>");
					out.println("</tr>");
				
			while(rs.next())  
			{
				g=rs.getString("sname");
				n=rs.getString("enrollment");
				p=rs.getString("fname");
				c=rs.getString("mobile");
				d=rs.getString("address");
				e=rs.getString("email");
				f=rs.getString("password");
				out.println("<tr>");
				out.println("<td>");
				out.println(g);
				out.println("</td>");
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
					background:black;
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