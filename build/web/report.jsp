<%-- 
    Document   : report
    Created on : Feb 17, 2016, 12:17:59 AM
    Author     : Ahmad
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
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
            <table border="1">
                 
                <tr>
                    <td>Roll No</td>
                    <td>Name</td>
                    <td>Father Name</td>
                    <td>Address</td>
                    <td>Acadamic Year</td>
                    <td>Gender</td>
                    <td>Department</td>
                    <td>Batch</td>
                    <td>DOB</td>
                    </tr>
                    <%
                 try{
            Connection con;
            Statement st;
            ResultSet rs;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webApp", "root", "root");
                  st=con.createStatement();
            String sql="select * from studententry";
            rs=st.executeQuery(sql);
            while(rs.next()){
                    %>
        
             
                <tr>
                    <td><%=rs.getString("roll_no")%></td>
                    <td><%=rs.getString("name")%></td>
                    <td><%=rs.getString("fname")%></td>
                    <td><%=rs.getString("address")%></td>
                    <td><%=rs.getString("ay")%></td>
                    <td><%=rs.getString("gender")%></td>
                    <td><%=rs.getString("dept")%></td>
                    <td><%=rs.getString("batch")%></td>
                    <td><%=rs.getString("month")%></td>
                    </tr>    
                
           
            
            <%
            }
            }catch(Exception e){
            System.out.print(e);
            }
        %>
         </table>
         <a href="homePage.jsp" color="RED">Go to Home Page</a>
    </body>
</html>
