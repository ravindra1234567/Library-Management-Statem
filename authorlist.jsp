<%@ page import="java.sql.*" %>
<%
		String n="";
		String result="";
		try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root",""); 
			Statement stmt=con.createStatement();  
			ResultSet rs=stmt.executeQuery("select distinct author from addbook  ");  
			out.println("<center>");
				
				while(rs.next())  
				{
					n=rs.getString("author");
					result = result+("<option>"+n+"</option>");
				}
				out.println("<select><option disabled selected>Author Name</option><option>"+result+"</option></select>");
				out.println("</center>");
				out.println("<input type='text' name='text1' id='ty'>");
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
				width:60px;	
			}
			td:hover
			{
				background:#ffff00;
				color:#000000;	
			}
			
			
		</style>
	</head>
	<body>
		<html>
			<input type="submit" onclick="bvalue();">
		<!--<button  onclick="bookdelete();" style="margin-left:650px;margin-top:10px;border-redius:10px;height:35px;width:120px;background:red;">Edite</button>-->
		
		
	</body>
</html>