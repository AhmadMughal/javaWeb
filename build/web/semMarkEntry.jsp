<%-- 
    Document   : semMarkEntry
    Created on : Feb 17, 2016, 12:17:05 AM
    Author     : Ahmad
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2><%try{String a=session.getAttribute("username").toString();
            out.println("Welcome  "+a);}catch(Exception e){System.out.print(e);}%> </h2>
        <form method="post" action="semMarkEntry.jsp">
            <table>
                <tr>
                    <td>Roll No</td>
                    <td><input type="text" name="rn" ></td>
                    
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name"></td>
                    
                </tr>
                <tr>
                    <td>Acadamic Year</td>
                    <td><input type="text" name="ay"></td>
                    
                </tr>
                <tr>
                    <td>Course</td>
                    <td><input type="text" name="course"></td>
                    
                </tr>
                <tr>
                    <td>Subject Code</td>
                    <td><select name="ddl1"><option value="sc01">sc01</option>
                                            <option value="sc02">sc02</option>
                                                <option value="sc03">sc03</option>
                                        <option value="sc04">sc04</option>
                                            <option value="sc05">sc05</option>
                                            <option value=sc06"">sc06</option></select></td>
                    <td>Marks</td>
                    <td><input type="text" name="marks1"></td>
                    
                </tr>
                  <tr>
                    <td>Subject Code</td>
                    <td><select name="ddl2"><option value="sc01">sc01</option>
                                            <option value="sc02">sc02</option>
                                                <option value="sc03">sc03</option>
                                        <option value="sc04">sc04</option>
                                            <option value="sc05">sc05</option>
                                            <option value=sc06"">sc06</option></select></td>
                    <td>Marks</td>
                    <td><input type="text" name="marks2"></td>
                    
                </tr>
                  <tr>
                    <td>Subject Code</td>
                    <td><select name="ddl3"><option value="sc01">sc01</option>
                                            <option value="sc02">sc02</option>
                                                <option value="sc03">sc03</option>
                                        <option value="sc04">sc04</option>
                                            <option value="sc05">sc05</option>
                                            <option value=sc06"">sc06</option></select></td>
                    <td>Marks</td>
                    <td><input type="text" name="marks3"></td>
                    
                </tr>
                  <tr>
                    <td>Subject Code</td>
                    <td><select name="ddl4"><option value="sc01">sc01</option>
                                            <option value="sc02">sc02</option>
                                                <option value="sc03">sc03</option>
                                        <option value="sc04">sc04</option>
                                            <option value="sc05">sc05</option>
                                            <option value=sc06"">sc06</option></select></td>
                    <td>Marks</td>
                    <td><input type="text" name="marks4"></td>
                    
                </tr>
                  <tr>
                    <td>Subject Code</td>
                    <td><select name="ddl5"><option value="sc01">sc01</option>
                                            <option value="sc02">sc02</option>
                                                <option value="sc03">sc03</option>
                                        <option value="sc04">sc04</option>
                                            <option value="sc05">sc05</option>
                                            <option value=sc06"">sc06</option></select></td>
                    <td>Marks</td>
                    <td><input type="text" name="marks5"></td>
                    
                </tr>
                  <tr>
                    <td>Subject Code</td>
                    <td><select name="ddl6"><option value="sc01">sc01</option>
                                            <option value="sc02">sc02</option>
                                                <option value="sc03">sc03</option>
                                        <option value="sc04">sc04</option>
                                            <option value="sc05">sc05</option>
                                            <option value=sc06"">sc06</option></select></td>
                    <td>Marks</td>
                    <td><input type="text" name="marks6"></td>
                    
                </tr>
               
                
                
            </table>
            <input type="submit" name="submit" value="Insert">
        </form>
        <a href="homePage.jsp" color="RED">Go to Home Page</a>
    </body>
</html>
<%
try{
Connection con;
Statement st;
String a=request.getParameter("rn");
String b=request.getParameter("name");
String c=request.getParameter("ay");
String d=request.getParameter("course");
String e=request.getParameter("ddl1");
String f=request.getParameter("ddl2");
String g=request.getParameter("ddl3");
String h=request.getParameter("ddl4");
String i=request.getParameter("ddl5");
String j=request.getParameter("ddl6");
String k=request.getParameter("marks1");
String l=request.getParameter("marks2");
String m=request.getParameter("marks3");
String n=request.getParameter("marks4");
String o=request.getParameter("marks5");
String p=request.getParameter("marks6");
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webApp", "root", "root");
st=con.createStatement();
String sql="insert into marksentry(roll_no,name,acadamic_year,course,sc_1,sc_2,sc_3,sc_4,sc_5,sc_6,m1,m2,m3,m4,m5,m6)"
        + "VALUES('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"',"
        + "'"+l+"','"+m+"','"+n+"','"+o+"','"+p+"')";
st.execute(sql);
System.out.print("inserted");

}catch(Exception e){
System.out.print(e);
}



%>