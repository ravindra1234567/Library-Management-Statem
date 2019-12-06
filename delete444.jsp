<%@ page import="java.sql.*" %>
<%
		try
		{
			String pp = request.getParameter("rollnumber1");
			String pp1 = request.getParameter("au");
			String a="";
	
	
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","");  
			 
			Statement stmt=con.createStatement();  
			ResultSet rs=stmt.executeQuery("select enrollment from signup where enrollment='"+pp+"' ");
			while(rs.next())
			{
				a=rs.getString("enrollment");
			}
			if(pp1 . equals ("true") )
			{
				int i=0;
				int j=1;
				i= stmt.executeUpdate("delete  from signup where enrollment='"+a+"' "); 
				if(i!=0){out.println("<b style='color:red;font-size:25px;'>Record  Deleted..............</b>");}
				else{out.println("<b style='color:red;font-size:27px;text-align:center;'>Record  Not Deleted..............</b>");}
			}
			con.close();  
		}
		catch(Exception e)
		{
			 out.println(e);
		}
	%>