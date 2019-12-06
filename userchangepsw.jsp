<%@ page import="java.sql.*" %>
<%
	String oldpassword = request.getParameter("oldpassword");
	String password = request.getParameter("password");
	String cpassword = request.getParameter("cpassword");

try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","");  
			 
			Statement stmt=con.createStatement();  
			int i=0;
			i=stmt.executeUpdate("update signup set password='"+password+"',cpassword='"+cpassword+"' where password='"+oldpassword+"' "); 
			if(i!=0)
			{%>
				<body>
						<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">Changed Password</h1><br>
							<a href="userdasboard.html" style="font-size:30px;background:#dcf442;">GO  Back</a>
							</center>
			<%}
			else
			{%>
				<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">Wrong Oldpassword</h1><br>
							<a href="userdasboard.html" style="font-size:30px;background:#dcf442;">GO Back</a>
							</center>
			<%}
			con.close();  
		}
		



		catch(Exception e)
		{
			 out.println(e);
		}  

%>