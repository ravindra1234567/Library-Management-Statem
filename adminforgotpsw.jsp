<%@ page import="java.sql.*" %>
<%
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String password = request.getParameter("password");
	String cpassword = request.getParameter("cpassword");
	//out.println(email);
	//out.println(mobile);

 try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","");  
			 
			Statement stmt=con.createStatement();  
			int i=0;
			i=stmt.executeUpdate("update adminsignup set password='"+password+"',cpassword='"+cpassword+"' where email='"+email+"' and mobile='"+mobile+"'"); 
			if(i!=0)
			{%>
				<html>
					<body>
						<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">Changed Password</h1><br>
							<a href="librarymanagement.html" style="font-size:30px;background:#dcf442;">GO TO Home</a>
							</center>
			<%}
			else
			{%>
				<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">Wrong Enrollment and Mobile</h1><br>
							<a href="librarymanagement.html" style="font-size:30px;background:#dcf442;">GO TO Home</a>
							</center>
				<body>
			</html>
			<%}
			con.close();  
		}
		



		catch(Exception e)
		{
			 out.println(e);
		}

%>