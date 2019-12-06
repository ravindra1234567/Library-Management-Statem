<%@ page import="java.sql.*" %>
<%
	String adminid = request.getParameter("userid");
	String password = request.getParameter("password");
	String n="";
	String p="";
		try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","");  
			Statement stmt=con.createStatement();  
			ResultSet rs=stmt.executeQuery("select password from adminsignup where password='"+password+"' "); 
			while(rs.next())  
			{
				n=rs.getString("password");
			}
			
			if(n. equals (password) )
			{
				//out.println("Right Password");
				
				
				int i=0;
				i=stmt.executeUpdate("update adminsignup set password='"+password+"' where adminname='"+adminid+"' and password='"+password+"'"); 
				if(i!=0)
				{
					session.setAttribute("adminid",adminid);
					session.setAttribute("password",password);
					response.sendRedirect("admindasboard.html");
				}
				else
				{%>
					<html>
						<body>
							<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">Wrong Password And Email<h1><br>
							<a href="librarymanagement.html" style="font-size:30px;background:#dcf442;">GO Back</a>
							</center>	
					
					
				<%}
			}
			else
			{%>
					<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">Wrong Password And Email<h1><br>
							<a href="librarymanagement.html" style="font-size:30px;background:#dcf442;">GO Back</a>
							</center>	
					</body>
					</html>
				
			<%}
				con.close();  
		}
		



		catch(Exception e)
		{
			 out.println(e);
		}  

%>