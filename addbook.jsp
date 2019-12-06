<html>
	<head>
		<script>
			function redirect()
			{
				window.location("admindasboard");
			}
		</script>
	</head>
</html>
<%@ page import="java.sql.*" %>
<%

	String adminid=(String)session.getAttribute("adminid");
	String password=(String)session.getAttribute("password");
	String issue ="NO";
	String n ="";
	if(adminid!=null)
	{
		String bookname = request.getParameter("bookname");
		String category = request.getParameter("category");
		String author = request.getParameter("auther");
		String ssn = request.getParameter("ssn");
		String price = request.getParameter("price"); 
		//out.println(auther);
		try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","");  
			 
			Statement stmt=con.createStatement();  
			ResultSet rs=stmt.executeQuery("select ssn from addbook");  
			while(rs.next())  
			{
				n=rs.getString("ssn");
			}
			if(!n. equals (ssn) )
			{
				int i=0; 
				i=stmt.executeUpdate("insert into addbook(bookname,category,author,ssn,issue,price) values('"+bookname+"','"+ category+"','"+author+"','"+ssn+"','"+issue+"','"+ price+"')");  
				if(i==1)
				{ %>
					<html>
						<body>
							<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">Record Inserted Successfully</h1><br>
							<a href="admindasboard.html" style="font-size:30px;background:#dcf442;">GO Back</a>
							</center>	
					
					
				<%}
				else
				{%>
					<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">Record Not Inserted </h1><br>
							<a href="admindasboard.html" style="font-size:30px;background:#dcf442;">GO Back</a>
							</center>
				<%}
			}
			else
			{%>
				<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">This Book Already Inserted</h1><br>
							<a href="admindasboard.html" style="font-size:30px;background:#dcf442;">GO Back</a>
							</center>
				
			<%}
				con.close();  
		}
		catch(Exception e){out.println(e);} 
	}
	else
	{%>
			<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">Record Not Inserted</h1><br>
							<a href="admindasboard.html" style="font-size:30px;background:#dcf442;">GO Back</a>
							</center>
		
			</body>
		</html>
	<%}

%>
