<%@ page import="java.sql.*" %>
<%
	String enrollment = request.getParameter("enrollment");
	
		try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","");  
			 
			Statement stmt=con.createStatement();  
			int i=0;
			i= stmt.executeUpdate("delete  from signup where enrollment='"+enrollment+"' "); 
			if(i!=0)
			{ 		
				out.println("<center>");
				out.println("<b style=\"color:red;font-size:50px;\"> "+enrollment+" </b>");
				out.println("<b style = \"color:red;font-size:50px;\">Record Deleted</b>");
				out.println("</center>");
			}
			else
			{
				out.println("<center>");
				out.println("<b style=\"color:red;font-size:50px;\"> "+enrollment+" </b>");
				out.println("<b style = \"color:red;font-size:50px;\">Record  Not Deleted</b>");
				out.println("</center>");
			}
			con.close();  
		}
		



		catch(Exception e)
		{
			 out.println(e);
		}  

%>