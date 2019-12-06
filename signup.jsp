<%@ page import="java.sql.*" %>
<%
	String sname = request.getParameter("sname");
	String enrollment = request.getParameter("enrollment");
	String fname = request.getParameter("fname");
	String dob = request.getParameter("dob");
	String gender = request.getParameter("gender");
	String branch = request.getParameter("branch");
	String category = request.getParameter("category");
	String mobile = request.getParameter("mobile");
	String address = request.getParameter("address");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String cpassword = request.getParameter("cpassword"); 
	String en="";
		
		//out.println(" Welcome");

		try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","");  
			 
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select enrollment from signup where enrollment='"+enrollment+"'");  
			while(rs.next() )
			{
				en=rs.getString("enrollment");
			}
			if(!en. equals (enrollment) )
			{
				int i=0; 
				i=stmt.executeUpdate("insert into signup(sname,enrollment,fname,dob,gender,branch,category,mobile,address,email,password,cpassword) values('"+sname+"','"+ enrollment+"','"+fname+"','"+dob+"','"+gender+"','"+branch+"','"+category+"','"+mobile+"','"+ address+"','"+email+"','"+password+"','"+cpassword+"')");  
				if(i==1)
				{%>
					<html>
						<body>
							<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">Record Inserted Successfully.....</h1><br>
							<a href="librarymanagement.html" style="font-size:30px;background:#dcf442;">GO TO Home</a>
							</center>						
				<%}
				else
				{%>
							<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">Record Not Inserted......</h1><br>
							<a href="librarymanagement.html" style="font-size:30px;background:#dcf442;">GO TO Home</a>
							</center>							
				<%}
			}
			else
			{%>
				<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">This Record Already Inserted ...</h1><br>
							<a href="librarymanagement.html" style="font-size:30px;background:#dcf442;">GO TO Home</a>
							</center>	
				</body>
				</html>
			<%}
			con.close();  
		}
		catch(Exception e){out.println(e);} 
	  
%>