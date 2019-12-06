<%@ page import="java.sql.*" %>
<%
		int i=1;
		String n="";
		String p="";
		String c="";
		String d="";
		String e="";
		try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root",""); 
			Statement stmt=con.createStatement();  
			ResultSet rs=stmt.executeQuery("select * from addbook ");  
			out.println("<center>");
			out.println("<table border='2 solid red' style='background-color:black'>");
				out.println("<tr style='background-color:blue;color:white'>");
					out.println("<th>Book Name</th><th>Category</th><th>Author</th><th>SSN Number</th><th>Price</th>");
				out.println("</tr>");
				
				while(rs.next())  
				{
					n=rs.getString("bookname");
					p=rs.getString("category");
					c=rs.getString("author");
					d=rs.getString("ssn");
					e=rs.getString("price");
					out.println("<tr>");
						out.println("<td id='bn"+i+"'>"+n+"</td> <td id='cat"+i+"'>"+p+"</td> <td id='au"+i+"'>"+c+"</td> <td id='ssn"+i+"'>"+d+"</td> <td id='pri"+i+"'>"+e+"</td>");
					out.println("</tr>");
					i=i+1;
				}
			out.println("</table>");
			out.println("</center>");
			con.close();  
		}
		catch(Exception ex)
		{
			 System.out.println(ex);
		} 

%>
<html>
	<head>
	
	<script>
			var ppp,ppp1,bookname1,category1,author1,ssn1,price1;
		
			function funedite()
			{
				var ll = 1;	
				alert("hello");
				qq11 = document.getElementById('oi');
				pp11 = qq11.value;
					//alert(pp11);
				while(ll<=pp11)
				{
					qqq = document.getElementById('ed'+ll);
					ppp = qqq.checked;
					qqq1 = document.getElementById('de'+ll);
					ppp1 = qqq1.checked;
					bookname = document.getElementById('bn'+ll);
					bookname1 = bookname.innerHTML;
					category = document.getElementById('cat'+ll);
					category1 = category.innerHTML;
					author = document.getElementById('au'+ll);
					author1 = author.innerHTML;
					ssn = document.getElementById('ssn'+ll);
					ssn1 = ssn.innerHTML;
					price = document.getElementById('pri'+ll);
					price1 = price.innerHTML;
					edite444();
					ll=ll+1;
				}

			}
			
		function edite444()
		{
			//alert("hi");
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
			//alert("ravi");
			var url= "bookedite.jsp?bookname=java";//+bookname1+"&category="+category1+"&author="+author1+"&ssn="+ssn1+"&price="+price1+"&edite="+ppp+"&delete="+ppp1;
			alert("kumar");
			xmlHttp.onreadystatechange = stateChanged322;
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}	
		
		function stateChanged322()

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
		<style>
			tr
			{	
					height: 30px;
					font-size: 18pt;
					color:white;
					text-align:center;
			}
			td
			{
				width:220px;	
			}
			td:hover
			{
				background:#ffff00;
				color:#000000;	
			}
			
		</style>
	</head>
	<body>
	</body>
</html>