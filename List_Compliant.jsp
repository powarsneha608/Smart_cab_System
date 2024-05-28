<%-- 
    Document   : List_Compliant
    Created on : 9 Apr, 2023, 1:45:34 PM
    Author     : Snehal
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List  User_Compliant</title>
        <link rel="stylesheet" href="bootstrap.min.css">
    </head>
    <body>
        <%@include file="Header_Admin.jsp"%>
         <div class="container">
            <br>
            <br>
           <center> <h1 style="color: linear-gradient(to bottom, #1d1d1c, #454725, #707529, #a0a628, #d4da1c);"><b>User Compliant List</b></h1></center>
            <br>
            <br>
            <form action="List_Compliant.jsp" method="POST">
                <div class="row">
                <div class="col-sm-5">
                    <input type="text" name="txt_id"  class="form-control">
                </div>
                     <div class="col-sm-2">
                    <input type="submit" name="btn_save" value="Search" class="btn btn-primary">
                     </div>
                    
                </div>
            </form>
        <br>
        <br>
        <table class="table table-bordered">
    <thead>
      <tr style="background-color: skyblue">
        <th><b>id</b></th>
        <th><b>User name</b></th>
        <th><b>Contact</b></th>
        <th><b>Email</b></th>
        <th><b>Compliant title</b></th>
        <th><b>Description</b></th>
        <th><b>Message</b></th>
        <th><b>Solution</b></th>
        <th><b>Action</b></th>
        
      </tr>
    </thead>
    
        <%
    Connection cn=null;
   Statement st=null;

       try
       {
           Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
           String sql="select * from  user_compliant ORDER BY solution='Pending'  DESC;";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
           %>
           <tbody>
               <tr>
           <form action="update_Compliant.jsp" method="POST">
            
             
        <td><%=rs.getString("user_compliant_id")%></td>
         <input  value="<%=rs.getString("user_compliant_id")%>"onkeypress="javascript:return isNumber(event)" type="hidden" name="txt_id" placeholder=" Compliant id"  class="form-control">

        <td><%=rs.getString("name_of_user")%></td>
         <input value="<%=rs.getString("name_of_user")%>"onkeypress="javascript:return isString(event)" type="hidden" name="txt_name" placeholder="Enter Name" class="form-control">

         <td><%=rs.getString("contact")%></td> 
         <input value="<%=rs.getString("contact")%>"onkeypress="javascript:return isNumber(event)"maxlength="10" type="hidden" required pattern="[789][0-9]{19}" title="Plz enter valid contact no" name="txt_number" placeholder="Enter contact number" class="form-control">

         <td><%=rs.getString("Email")%></td> 
        <input value="<%=rs.getString("Email")%>"type="hidden" name="txt_email" placeholder="Enter Email id"  class="form-control">

         <td><%=rs.getString("Compliant_tile")%></td>
        <input value="<%=rs.getString("Compliant_tile")%>"onkeypress="javascript:return isString(event)"type="hidden" name="txt_title" placeholder="Enter Title"  class="form-control">

         <td><%=rs.getString("Description")%></td> 
       <input type="hidden"value="<%=rs.getString("message")%>"style=" border:solid black;" name="discription" class="form-control" placeholder="Write Discription (in 100 words)" rows="2" cols="15">

         <td><%=rs.getString("message")%></td> 
         <input type="hidden" value="<%=rs.getString("message")%>"style=" border:solid black;" name="message" class="form-control" placeholder="Enter Message (in 100 words)" rows="2" cols="15">
           <%
         
         if(rs.getString("solution").equals("Pending"))
                         {
         %>
         <td style="color: red"><%=rs.getString("solution")%></td> 
         <input type="hidden" value="<%=rs.getString("solution")%>"style="color:red" name="solution" class="form-control" placeholder="Enter Message (in 100 words)" rows="2" cols="15">
<%

         }else
                         {
%>

<td style="color: green"><%=rs.getString("solution")%></td> 
         <input type="hidden" value="<%=rs.getString("solution")%>"style="color:red" name="solution" class="form-control" placeholder="Enter Message (in 100 words)" rows="2" cols="15">
             <%
}


%>
             <td>
             <input type="submit" class="btn btn-success" name="btn_save" value="ADD Solution">
            
         </td>
         </form>
      </tr>
      
    </tbody>
           <%
           }
       }catch(Exception ex)
       {
           out.println(ex.toString());
       }
     

%>
     
  </table>
          
 </div>


    </body>
</html>

    </body>
</html>


