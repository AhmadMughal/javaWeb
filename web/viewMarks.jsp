<%-- 
    Document   : viewMarks
    Created on : Feb 17, 2016, 12:17:29 AM
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
        <form>
        <table>
            <tr>
                <td>Enter Roll No Here</td>
                <td><input type="text" name="rn"></td>
                <td><input type="submit" name="submit" value="submit"></td>
                <td><a href="homePage.jsp" color="RED">Go to Home Page</a></td>
            </tr>
            </table>
        </form>
        
    </body>
</html>
<%
try{
    Connection con;
    Statement st;
    ResultSet rs;
    String rn=request.getParameter("rn");
    
    Class.forName("com.mysql.jdbc.Driver");
    

    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webApp", "root", "root");
    st=con.createStatement();
    String sql="select * from marksentry where roll_no='"+rn+"'";
    rs=st.executeQuery(sql);
    while(rs.next()){
    %>
    <table>
        <tr>
            <td>Name</td>
            <td><input type="text" value="<%=rs.getString("name")%>"></td>
        </tr>
        <tr>
            <td>Acadamic Year</td>
            <td><input type="text" value="<%=rs.getString("acadamic_year")%>"></td>
        </tr>
        <tr>
            <td>Course</td>
            <td><input type="text" value="<%=rs.getString("course")%>"></td>
        </tr>
        <tr>
            <td>Subject Code</td>
            <td><input type="text" value="<%=rs.getString("sc_1")%>"></td>
        </tr>
        <tr>
            <td>Subject Code</td>
            <td><input type="text" value="<%=rs.getString("sc_2")%>"></td>
        </tr>
        <tr>
            <td>Subject Code</td>
            <td><input type="text" value="<%=rs.getString("sc_3")%>"></td>
        </tr>
        <tr>
            <td>Subject Code</td>
            <td><input type="text" value="<%=rs.getString("sc_4")%>"></td>
        </tr>
        <tr>
            <td>Subject Code</td>
            <td><input type="text" value="<%=rs.getString("sc_5")%>"></td>
        </tr>
        <tr>
            <td>Subject Code</td>
            <td><input type="text" value="<%=rs.getString("sc_6")%>"></td>
        </tr>
        <tr>
            <td>Marks</td>
            <td><input type="text" value="<%=rs.getString("m1")%>"></td>
            <td>Result </td>
           <td><input type="text" value=" <%
            if((rs.getInt("m1"))>50){
            out.print("p");
            
            }else{
                    out.print("F");
                    }
            
            
            %>"> </td>
        </tr>
        <tr>
            <td>Marks</td>
            <td><input type="text" value="<%=rs.getString("m2")%>"></td>
              <td>Result </td>
            <td><input type="text" value=" <%
            if((rs.getInt("m2"))>50){
            out.print("p");
            
            }else{
                    out.print("F");
                    }
            
            
            %>"> </td>
        </tr>
        <tr>
            <td>Marks</td>
            <td><input type="text" value="<%=rs.getString("m3")%>"></td>
              <td>Result </td>
            <td><input type="text" value=" <%
            if((rs.getInt("m3"))>50){
            out.print("p");
            
            }else{
                    out.print("F");
                    }
            
            
            %>"> </td>
        </tr>
        <tr>
            <td>Marks</td>
            <td><input type="text" value="<%=rs.getString("m4")%>"></td>
              <td>Result </td>
            <td><input type="text" value=" <%
            if((rs.getInt("m4"))>50){
            out.print("p");
            
            }else{
                    out.print("F");
                    }
            
            
            %>"> </td>
        </tr>
        <tr>
            <td>Marks</td>
            <td><input type="text" value="<%=rs.getString("m5")%>"></td>
              <td>Result </td>
            <td><input type="text" value=" <%
            if((rs.getInt("m5"))>50){
            out.print("p");
            
            }else{
                    out.print("F");
                    }
            
            
            %>"> </td>
        </tr>
        <tr>
            <td>Marks</td>
            <td><input type="text" value="<%=rs.getString("m6")%>"></td>
              <td>Result </td>
            <td><input type="text" value=" <%
            if((rs.getInt("m6"))>50){
            out.print("p");
            
            }else{
                    out.print("F");
                    }
            
            
            %>"> </td>
        </tr>
        
    </table>
    <%
    }
    
}catch(Exception e){
    System.out.print(e);
}

%>