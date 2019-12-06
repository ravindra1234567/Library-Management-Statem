<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Welcome to JSTL foreach tag Example in JSP</title>
    </head>

    <body>
        <h2>JSTL foreach tag example in JSP</h2>

        <jsp:scriptlet>
            String[] windows = new String[]{"Windows XP", "Windows 7", "Windows 8", "Windows mobile"};
            pageContext.setAttribute("windows", windows);
        </jsp:scriptlet>

        <%-- JSTL foreach tag example to loop an array in jsp --%>
        <c:forEach var="window" items="${pageScope.windows}"> 
            <c:out value="${window}"/> 
        </c:forEach>
    </body>
</html>


Read more: http://javarevisited.blogspot.com/2012/10/jstl-foreach-tag-example-in-jsp-looping.html#ixzz5AALTX9fQ