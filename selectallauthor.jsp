<%@ page import="java.sql.*" %>
<%
		String authorname="";
		String bn="";
		String cg="";
		String au="";
		String ssn="";
		String issue="";
		int i=1,k=0;
		authorname = request.getParameter("authorname");
		//out.println(bookname);
		try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root",""); 
			Statement stmt=con.createStatement();  
			ResultSet rs=stmt.executeQuery("select * from addbook where author='"+authorname+"' ");  
			out.println("<table border='2 solid red' style='background-color:black'>");
				out.println("<tr style='background-color:blue;color:white'>");
					out.println("<th style='width:300px'>Book Name</th><th style='width:150px'>Category</th><th style='width:300px'>Author</th><th>SSN Number</th><th>ISSUE</th><th>ISSUE Book</th>");
				out.println("</tr>");
				while(rs.next())  
				{
					bn=rs.getString("bookname");
					cg=rs.getString("category");
					au=rs.getString("author");
					ssn=rs.getString("ssn");
					issue=rs.getString("issue");
					out.println("<tr style='color:white'>");
						out.println("<td>"+bn+"</td> <td >"+cg+"</td> <td id='au"+i+"'>"+au+"</td> <td id='sn"+i+"'>"+ssn+"</td> <td>"+issue+"</td><td><input type='checkbox'  style='height:25px;width:30px;border-radius: 5px;' id='cha"+i+"' ></td>");
					out.println("</tr>");
					i=i+1;
				}
				 k=i;
				out.println("<input type='hidden' id='oi' value='"+k+"'><br>");
				
				out.println("</table>");
			out.println("</center>");
			con.close();  
		}
		catch(Exception ex)
		{
			 System.out.println(ex);
		} 
		
%>
<html>
	<head>
		<script>

		</script>
	</head>
</html>