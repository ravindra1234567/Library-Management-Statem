<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.Date" %> 
<%@ page import="javax.servlet.*,java.text.*" %> 

<!doctype html>
<html>
	<head>
		<title> Library Managent</title>
		
		<script>
		function librarymanagement()
		{
			
			if (typeof XMLHttpRequest != "undefined")
			{
				xmlHttp= new XMLHttpRequest();
			
			}

			else if (window.ActiveXObject)
			{
				xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
		
			}
	
			if (xmlHttp==null)
			{
				alert ("Browser does not support XMLHTTP Request")
				return
			}
	
	
	
			var url= "admindesboard.html";
			xmlHttp.onreadystatechange = stateChangeli;
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}	
		function stateChange3li()

		{
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				a=document.getElementById("d1");
				a.style.background="white";
				a.style.color="black";
				a.innerHTML=xmlHttp.responseText;
		
			}
		}
		</script>
	</head>
</html>

<%

		String adminid=(String)session.getAttribute("adminid");
		String password=(String)session.getAttribute("password");
		String n = " ";
		if(adminid!=null)
		{
			String enrollment = request.getParameter("enrollment");
			String bookname = request.getParameter("bookname");
			String author = request.getParameter("author");
			String ssn = request.getParameter("ssn");
			String issue ="YES";
			String return1 ="NO";
			String rdate1 ="00:00:0000";
			String rtime1 ="00:00:00";
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
				ResultSet rs=stmt.executeQuery("select enrollment from signup where enrollment='"+enrollment+"' ");  
				while(rs.next())  
				{
					n=rs.getString("enrollment");
				}
				if(n. equals (enrollment) )
				{	
					 int i=0;
					i=stmt.executeUpdate("update addbook set issue='"+issue+"' where ssn='"+ssn+"'");
					i=stmt.executeUpdate("insert into bookissue(enrollment1,bookname,author,ssn,issue,date1,time1,return1,rdate1,rtime1) values('"+ enrollment+"','"+bookname+"','"+author+"','"+ssn+"','"+issue+"','"+date1+"','"+time1+"','"+return1+"','"+rdate1+"','"+rtime1+"')");  
					if(i==1)
					{%>
						<html>
						<body>
							<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">Book Issued<h1><br>
							<a href="admindasboard.html" style="font-size:30px;background:#dcf442;">GO Back</a>
							</center>
						
					<%}
					else
					{%>
						<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">Book Not Issued<h1><br>
							<a href="admindasboard.html" style="font-size:30px;background:#dcf442;">GO Back</a>
							</center>
						
					<%}
					
				}
				else
				{%>
					<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">Pleas Signup Firstly<h1><br>
							<a href="librarymanagement.html" style="font-size:30px;background:#dcf442;">GO To Home</a>
							</center>
					
				<%}
									
				con.close();  
			}
			catch(Exception e){%>
				<center><h1 style="margin-top:20px;background:green;color:white;font-size:50px;">THis Book Already Issued</h1><br>
							<a href="admindasboard.html" style="font-size:30px;background:#dcf442;">GO  Back</a>
			<body>
				</html>	
				
			<%} 
		}
		else
		{
			response.sendRedirect("librarymanagement.html");
		}
%>