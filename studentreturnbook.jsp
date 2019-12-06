<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="javax.servlet.*,java.text.*" %> 
<%
	String ssn = request.getParameter("ssn");
	String bookname = request.getParameter("bookname");
	String enrollment = request.getParameter("enrollment");
	String author = request.getParameter("author");
	//out.println(enrollment+ssn+bookname+author);
	
		String return1 ="YES";
		String issue ="NO";
		 Date date11 = new Date( ); 
		SimpleDateFormat ft = new SimpleDateFormat (" dd.MM.yyyy ");
		SimpleDateFormat f2 =  new SimpleDateFormat(" hh:mm:ss a");
		String date1 = " "+(ft.format(date11));
		String time1 = " "+f2.format(date11);


		try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","");  
			 
			Statement stmt=con.createStatement();  
			int i=0;
			i=stmt.executeUpdate("update bookissue set return1='"+return1+"',rdate1='"+date1+"',rtime1='"+time1+"' where enrollment1='"+enrollment+"' and ssn='"+ssn+"'"); 
			i=stmt.executeUpdate("update addbook set issue='"+issue+"' where ssn='"+ssn+"' "); 
			if(i!=0)
			{%>
				<html>
					<body>
						<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">Book Returned Successfully...</h1><br>
							<a href="admindasboard.html" style="font-size:30px;background:#dcf442;">Go Back</a>
							</center>		
			<%}
			else
			{%>
				<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">Book Not Returned</h1><br>
							<a href="admindasboard.html" style="font-size:30px;background:#dcf442;">Go Back</a>
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