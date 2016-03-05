<%-- 
    Document   : viewStudent
    Created on : Feb 17, 2016, 12:15:58 AM
    Author     : Ahmad
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Pag</title>
    </head>
    <body>
        <h2><%try{String a=session.getAttribute("username").toString();
            out.println("Welcome  "+a);}catch(Exception e){System.out.print(e);}%> </h2>
        <form method="get" action="viewStudent.jsp">
                    <table>
                        <tr>
                            <td>Enter Roll Number you want to see</td>
                            <td><input type="text" name="roll"></td>
                            <td><input type="submit" name="enter" value="ENTER"></td>
                            <td><a href="homePage.jsp" color="RED">Go to Home Page</a></td>
                            
                        </tr>
                        <tr><td>Enter Roll Number you want to Delete</td>
                            <td><input type="text" name="roll_no"></td>
                             <td><input type="submit" name="delete" value="DELETE"></td>
                            </tr>
                        
                       
                        
                       
                        
                    
                        
                           
                        
                        
                          
            
            
                    </table>
                   
                </form>
       
    </body>
</html>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    if (request.getParameter("enter") != null){
Connection con;
Statement st;
ResultSet rs;
try{
    String rn=request.getParameter("roll");
//String dob=request.getParameter("month");
//String name=request.getParameter("name");
//String fname=request.getParameter("fname");
//String ay=request.getParameter("ay");
//String gender=request.getParameter("rb");
//String add=request.getParameter("add");
//String dept=request.getParameter("dept");
//String co=request.getParameter("course");
//String ba=request.getParameter("batch");
    
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webApp", "root", "root");
st=con.createStatement();
String sql="SELECT *FROM studententry WHERE roll_no='"+rn+"'";
rs=st.executeQuery(sql);
while(rs.next()){
   %>
   <table>
       <tr><td>Name</td>
           <td><input type="text" name="name" value="<%=rs.getString("name")%>"></td>
  </tr>
  <tr>
  <td>Father Name</td>
  <td><input type="text" name="fname" value="<%=rs.getString("fname")%>"></td>
  </tr>
<tr><td>DOB</td>
    <td><input type="text" name="month" value="<%=rs.getString("month")%>"></td></tr> 
 <tr>
                            <td>Batch</td>
                            <td><input type="text" name="batch" value="<%=rs.getString("batch")%>"></td>
                           
                        </tr>
                        
                            <tr>
                            <td>Department</td>
                            <td><input type="text" name="dept" value="<%=rs.getString("dept")%>"></td>
                               
                        </tr>
                        <tr><td>Academic Year</td>
                            <td><input type="text" name="ay" value="<%=rs.getString("ay")%>"></td></tr>
                        <tr>
                         <td>Gender</td>
                         <td><input type="text" name="rb" value="<%=rs.getString("gender")%>"></td>
                                                           
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td><input type="text" name="add" value="<%=rs.getString("address")%>"></td>
                            
                            
                        </tr>

   </table>
  <%
}

}catch(Exception e){
System.out.print(e);
}
  }
  else if(request.getParameter("delete") != null){
      Connection con;
        Statement st;
     ResultSet rs;
      try{
         
          Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webApp", "root", "root");
            st=con.createStatement();
            String qury="DELETE FROM studententry WHERE roll_no='"+request.getParameter("roll_no")+"'";
            st.executeUpdate(qury);
            System.out.println("record deleted");
     }catch(Exception e){
         System.out.print(e);
     
     }

}
%>