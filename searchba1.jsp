<%@ page import="java.sql.*" %>
<%
	String adminid=(String)session.getAttribute("adminid");
	String password=(String)session.getAttribute("password");
	String bookname = request.getParameter("bookname");
	String auther = request.getParameter("auther");
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
			
			ResultSet rs=stmt.executeQuery("select * from addbook where bookname='"+bookname+"' and auther='"+auther+"' ");   
			out.println("<table border='2 solid red'>");
				out.println("<tr>");
					out.println("<th>");
						out.println("Book Name");
					out.println("</th>");
					out.println("<th>");
						out.println("Category");
					out.println("</th>");
					out.println("<th>");
						out.println("Auther");
					out.println("</th>");
					out.println("<th>");
						out.println("ISBN Number");
					out.println("</th>");
					out.println("<th>");
						out.println("Issue");
					out.println("</th>");
					out.println("<th>");
						out.println("Price");
					out.println("</th>");
					out.println("</tr>");
				
			while(rs.next())  
			{
				n=rs.getString("bookname");
				p=rs.getString("category");
				c=rs.getString("auther");
				d=rs.getString("isbn");
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
					font-size: 10pt;
					color:black;
       				transition-property:background,height,font-weight,font-size;
    				transition-duration: 3s;
			}
			tr:hover 
			{	
   				 	height: 60px;
					background:#0000ff;
					font-weight: bold; 
					font-size: 13pt;
					color:#ffffff;
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
			#headline{
						background-color:rgb(242, 192, 145);
						font-size:2em;color:rgb(226, 11, 32);
						font-family:bungee inline;
						height:50px;
						font-size:30px;
						color:white;
						text-align:center;
						transition-property:background,height,font-size,color;
						transition-duration:3s;
						transition-timing-function:linear;
						}
			   #headline:hover{
								height:100px;
								background:yellow;
								font-size:60px;
								color:blue;
							 }
		</style>
	</head>
	<body>
</html>