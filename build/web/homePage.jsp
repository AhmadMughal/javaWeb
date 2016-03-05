<%-- 
    Document   : homePage
    Created on : Feb 16, 2016, 11:59:35 PM
    Author     : Ahmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Home Page</h1>
        <h2><%try{String a=session.getAttribute("username").toString();
            out.println("Welcome  "+a);}catch(Exception e){System.out.print(e);}%> </h2>
        <a href="studentEnrty.jsp">Student Entry</a></br>
        <a href="viewStudent.jsp">View Student</a></br>
        <a href="semMarkEntry.jsp">Semester Marks Entry</a></br>
        <a href="viewMarks.jsp">View Marks</a></br>
        <a href="report.jsp">Report</a></br>
        <a href="index.jsp">Logout</a>
    </body>
</html>
