<%@ page import="java.sql.*" %>
<%
	String adminname = request.getParameter("adminname");
	String fname = request.getParameter("fname");
	String mobile = request.getParameter("mobile");
	String address = request.getParameter("address");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String cpassword = request.getParameter("cpassword"); 
	if(password .equals (cpassword))
	{
		
		
		try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","");  
			 
			Statement stmt=con.createStatement();  
			int i=0; 
			i=stmt.executeUpdate("insert into adminsignup(adminname,fname,mobile,address,email,password,cpassword) values('"+adminname+"','"+fname+"','"+mobile+"','"+ address+"','"+email+"','"+password+"','"+cpassword+"')");  
			if(i==1)
			{%>
				<html>
						<body>
							<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">Record Inserted Successfully</h1><br>
							<a href="admindasboard.html" style="font-size:30px;background:#dcf442;">GO  Back</a>
							</center>		
				
			<%}
			else
			{%>
				<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">Record Not Inserted</h1><br>
							<a href="admindasboard.html" style="font-size:30px;background:#dcf442;">GO  Back</a>
							</center>
				
			<%}
			con.close();  
		}
		catch(Exception e)
		{%>
			<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">THis record Already exist</h1><br>
							<a href="admindasboard.html" style="font-size:30px;background:#dcf442;">GO  Back</a>
			<body>
				</html>	
	<%	}
	}
	else
	{
		out.println("Invalid Confirm Password");
		out.println("<br><a href='librarymanagement.html'>Back</a>");
	}
	  
%>