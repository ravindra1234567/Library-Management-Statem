<%@ page import="java.sql.*" %>
<%
			String n="";
			String p="";
			String c="";
			String d="";
			String e="";
			String f="";
			String g="";
			String h="";
			String dob="";
			String gender="";
			String branch="";
			String category="";
			int i=1,k=0;
			String j = "";
			String jj = "";
		try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root",""); 
			 
			Statement stmt=con.createStatement();  
			
			ResultSet rs=stmt.executeQuery("select * from signup ");
			
			out.println("<center>");
			out.println("<table border='2 solid red' style='background-color:#231f1f'>");
				out.println("<tr style='background-color:blue'>");
						out.println("<th>Student Name</th><th>Enrollment Number<th>Father Name</th><th>Date Of Birth</th><th>Gender</th><th>Branch</th><th>Category</th><th>Mobile</th><th>Address</th><th>Email</th><th>Delete</th></th>");
					out.println("</tr>");
				
			while(rs.next())  
			{
				n=rs.getString("sname");
				p=rs.getString("enrollment");
				c=rs.getString("fname");
				dob=rs.getString("dob");
				gender=rs.getString("gender");
				branch=rs.getString("branch");
				category=rs.getString("category");
				d=rs.getString("mobile");
				e=rs.getString("address");
				f=rs.getString("email");
				g=rs.getString("password");
				h=rs.getString("cpassword");
	
				out.println("<tr>");
				out.println("<td >"+n+" </td> <td  name = 'kl"+i+"' id='si"+i+"' >"+p+" </td> <td >"+c+" </td> <td >"+dob+" </td><td >"+gender+" </td><td >"+branch+" </td><td >"+category+" </td><td>"+d+" </td> <td >"+e+" </td> <td >"+f+" </td>  <td><input type='checkbox'  style='height:25px;width:30px;border-radius: 5px;' id='ch"+i+"' ></td>");
				out.println("</tr>");
				i = i+1;	
			}
			 k=i;
			 out.println("<input type='hidden' id='oi' value='"+k+"'>");
			out.println("</table>");
			out.println("</center>");
			con.close();  
		}
		catch(Exception ex)
		{
			 out.println(ex);
		} 
%>

<html>
	<head>
		<script>
		
		function fun11()
			{
				var ll = 1;	
				alert("hello");
				qq11 = document.getElementById('oi');
				pp11 = qq11.value;
					//alert(pp11);
				for(ll;ll<=pp11;ll++)
				{
					
					qq = document.getElementById('si'+ll);
					pp = qq.innerHTML;
					qq1 = document.getElementById('ch'+ll);
					pp1 = qq1.checked;
					alert(pp);
					alert(pp1);
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
       				transition-property:background,height,font-weight,font-size;
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
		<button  onclick="fun11();" style="margin-left:650px;margin-top:10px;border-redius:10px;height:35px;width:120px;background:red;">Delete</button>
		
	</body>
</html>
