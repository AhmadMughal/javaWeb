<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           <html>  
    <head><title>ahmad</title></head>
    <body>
        
        <form method="post" action="index.jsp">
            <table>
                <tr>
                    <td>Username</td>
                        <td><input type="text" name="un" ></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="pass"></td>
                </tr>
            </table>
            <input type="submit" name="submit" value="Login">
        </form>
    </body>
</html>
   <%
       try{
        String username=request.getParameter("un");
        String password=request.getParameter("pass");
        String aa="ahmad";
        String bb="admin";
       
        if(username.equals(aa) && password.equals(bb))
            {
            session.setAttribute("username",username);
            response.sendRedirect("homePage.jsp");
            return;
            }
        else{
          
            response.sendRedirect("index.jsp");
        return;
        }
       }catch(Exception e){
           System.out.print(e);
       }     
   %>



