<%-- 
    Document   : studentEnrty
    Created on : Feb 17, 2016, 12:01:32 AM
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
            out.println("Welcome "+a);}catch(Exception e){System.out.print(e);}%> </h2>
                <form method="post">
                    <table>
                        <tr>
                            <td>Roll Number</td>
                            <td><input type="text" name="roll"></td>
                           
                        </tr>
                        <tr> <td>DOB</td>
                            <td><input type="text" name="month"></td></tr>
                       
                        <tr>
                            <td>Name</td>
                            <td><input type="text" name="name"></td>
                            
                        </tr>
                        <tr><td>Father Name</td>
                            <td><input type="text" name="fname"></td></tr>
                        <tr>
                            <td>Batch</td>
                            <td><input type="text" name="batch"></td>
                            
                        </tr>
                        <tr><td>Course</td>
                            <td><input type="text" name="course"></td></tr>
                        <tr>
                            <td>Department</td>
                            <td><input type="text" name="dept"></td>
                               
                        </tr>
                        <tr><td>Acadamic Year</td>
                            <td><input type="text" name="ay"></td></tr>
                        <tr>
                            <td>Gender</td>
                            <td><input type="text" name="rb"></td>
                                                           
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td><input type="text" name="add"></td>
                            
                            
                        </tr>
                        
                          
            
            
                    </table>
                    <input type="submit" name="submit" value="Submit">
                    <input type="submit" name="update" value="Update">
                </form>
        <a href="homePage.jsp" color="RED">Go to Home Page</a>
    </body>
</html>
<%
    if(request.getParameter("submit") !=null){
    Connection con;
    Statement st;
    
    try{
String rn=request.getParameter("roll");
String dob=request.getParameter("month");
String name=request.getParameter("name");
String fname=request.getParameter("fname");
String ay=request.getParameter("ay");
String gender=request.getParameter("rb");
String add=request.getParameter("add");
String dept=request.getParameter("dept");
String co=request.getParameter("course");
String ba=request.getParameter("batch");
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webApp", "root", "root");
st=con.createStatement();
String sql="INSERT INTO studententry(roll_no,name,fname,address,ay,gender,dept,batch,month)"
        + " VALUES('"+rn+"','"+name+"','"+fname+"','"+add+"','"+ay+"','"+gender+"',"
        + "'"+dept+"','"+ba+"','"+dob+"')";
//rn.setroll((String)getParameter("roll"));rn.setroll((String)getParameter("roll"));if (request.getParameter("first") != null) {
//    // Invoke FirstServlet's job here.
//} else if (request.getParameter("second") != null) {
//    // Invoke SecondServlet's job here.
//}
st.execute(sql);
System.out.print("ok");
    }catch(Exception e){
        System.out.print(e);
    
    }
    }
    if(request.getParameter("update") !=null){
    Connection con;
    Statement st;
    String rn=request.getParameter("roll");
    String dob=request.getParameter("month");
    String name=request.getParameter("name");
    String fname=request.getParameter("fname");
    String ay=request.getParameter("ay");
    String gender=request.getParameter("rb");
    String add=request.getParameter("add");
    String dept=request.getParameter("dept");
    String co=request.getParameter("course");
    String ba=request.getParameter("batch");
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webApp", "root", "root");
    st=con.createStatement();
    String sql="UPDATE studententry SET  name='"+name+"',fname='"+fname
            +"',address='"+add+"',ay='"+ay+"',gender='"+gender+"',dept='"+dept+"',batch='"+ba+"',month='"+dob+"' WHERE roll_no='"+rn+"' ";
   st.executeUpdate(sql);
   System.out.print("updated");
    }

%>
<!--session.removeAttribute("username");
        session.removeAttribute("password");
        session.invalidate();-->