<%@ page import="java.sql.*" %>
<%
	String enrollment = request.getParameter("enrollment");
	String password = request.getParameter("password");
	String n="";
	//out.println(enrollment);

		try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","");  			 
			Statement stmt=con.createStatement();  
			
			ResultSet rs=stmt.executeQuery("select password from signup where password='"+password+"' "); 
			while(rs.next())  
			{
				n=rs.getString("password");
			}
			
			if(n. equals (password) )
			{
				int i=0;
				i=stmt.executeUpdate("update signup set password='"+password+"' where enrollment='"+enrollment+"' and password='"+password+"'"); 
				if(i!=0)
				{
					session.setAttribute("enrollment",enrollment);
					session.setAttribute("password",password);
					response.sendRedirect("userdasboard.html");
				}
				else
				{%>
					<html>
						<body>
							<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">Wrong Password</h1><br>
							<a href="librarymanagement.html" style="font-size:30px;background:#dcf442;">GO TO Home</a>
							</center>		
				<%}
			}
			else
			{%>
				<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">Password Miss Match</h1><br>
							<a href="librarymanagement.html" style="font-size:30px;background:#dcf442;">GO TO Home</a>
							</center>
				</body>
			</body>
			<%}
			con.close();  
		}
		



		catch(Exception e)
		{
			 out.println(e);
		}  

%>