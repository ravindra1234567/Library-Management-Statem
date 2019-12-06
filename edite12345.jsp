<%@ page import="java.sql.*" %>
<%
		try
		{
			String ss = request.getParameter("ssn");
			String del = request.getParameter("delete");
			String a="";
			System.out.println("vhxczjh");
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","");  
			Statement stmt=con.createStatement();  
			ResultSet rs=stmt.executeQuery("select ssn from addbook where ssn='"+ss+"' ");
			while(rs.next())
			{
				a=rs.getString("ssn");
			}
			if(del . equals ("true") )
			{
				int i=0;
				int j=1;
				i= stmt.executeUpdate("delete  from addbook where ssn='"+a+"' "); 
				if(i!=0){out.println("<b style='color:red;font-size:25px;'>Record  Deleted..............</b>");}
				else{out.println("<b style='color:red;font-size:27px;text-align:center;'>Record  Not Deleted..............</b>");}
			}
			con.close();  
			
			
			
			
		}
		catch(Exception gg)
		{System.out.println(gg);}
			
	%>