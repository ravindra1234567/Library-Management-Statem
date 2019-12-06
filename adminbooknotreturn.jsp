<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	String adminid=(String)session.getAttribute("adminid");
	String password=(String)session.getAttribute("password");
	if(adminid!=null)
	{
			String return1="NO";
			String issue="YES";
			String n="";
			String p="";
			String c="";
			String d="";
			String e="";
			String f="";
			String g="";
			String h="";
			String enroll="";
			String sname="";
			String category="";
			String branch="";
		try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root",""); 
			 
			Statement stmt=con.createStatement();  
			
			ResultSet rs=stmt.executeQuery("select sname,enrollment,branch,category,bookname,author,ssn,date1,time1 from bookissue,signup where return1='"+return1+"'and issue='"+issue+"' and signup.enrollment = bookissue.enrollment1");   
			out.println("<center>");
			out.println("<table border='2 solid red'>");
				out.println("<tr style='background-color:blue;'>");
					out.println("<th>Student Name</th><th>Enrollment Number</th><td>Branch</th><th>Category</th><th>Book Name</th><th>Author</th><th>SSN Number</th><th>Issue Date</th><th> Elapse Day</th><th>Issue Time</th>");
					out.println("</tr>");
				
			while(rs.next())  
			{
				sname = rs.getString("sname");
				enroll = rs.getString("enrollment");
				branch = rs.getString("branch");
				category = rs.getString("category");
				
				p=rs.getString("bookname");
				c=rs.getString("author");
				d=rs.getString("ssn");
				e=rs.getString("date1");
				f=rs.getString("time1");
				
				Date date11 = new Date( ); 
				SimpleDateFormat ft = new SimpleDateFormat (" dd.MM.yyyy ");
				String date1 = " "+(ft.format(date11));
				//System.out.println(date1);
		
				String rt = e;
				String rt2 = date1;
		
				SimpleDateFormat format = new SimpleDateFormat("dd.MM.yyyy");
				Date d1= null;
				Date d2= null;
				
					d1 = format.parse(rt);
					d2 = format.parse(rt2);
					long diff = d2.getTime() - d1.getTime();
					long diffDays = diff / (24*60*60*1000); 
					if(diffDays<=30)
					{
						//System.out.println("hello");
						out.println("<tr style='background-color:green;'>");
							out.println("<td>"+sname+"</td><td>"+ enroll+"</td><td>"+branch+"</td><td>"+category+"</td><td>"+p+"</td><td>"+c+"</td><td>"+d+"</td><td>"+e+"</td><td>"+diffDays+"</td><td>"+f+"</td>");
						out.println("</tr>");
					}
					else if(diffDays>30 && diffDays <= 90)
					{
						out.println("<tr style='background-color:yellow;color:black'>");		
							out.println("<td>"+sname+"</td><td>"+ enroll+"</td><td>"+branch+"</td><td>"+category+"</td><td>"+p+"</td><td>"+c+"</td><td>"+d+"</td><td>"+e+"</td><td>"+diffDays+"</td><td>"+f+"</td>");
					}
					else
					{
						out.println("<tr style='background-color:red;'>");
							out.println("<td>"+sname+"</td><td>"+ enroll+"</td><td>"+branch+"</td><td>"+category+"</td><td>"+p+"</td><td>"+c+"</td><td>"+d+"</td><td>"+e+"</td><td>"+diffDays+"</td><td>"+f+"</td>");
					}	
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
       				transition-property:background,height,font-weight,font-size;
			}

			td
			{
				width:60px;	
			}
			td:hover
			{
				background:black;
				color:white;	
			}

		</style>
	</head>
	<body>
</html>