<%-- 
    Document   : List_Notice
    Created on : 8 Mar, 2023, 8:00:49 PM
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
        <title>List Notice</title>
        <link rel="stylesheet" href="bootstrap.min.css">
    </head>
    <body>
        <%@include file="Header_Admin.jsp"%>
          <div class="container">
            <br>
            <br>
           <center> <h1 style="color:Blue"><b>List Notice</b></h1></center>
            <br>
            <br>
            <form action="List_Notice.jsp" method="POST">
                <div class="row">
                <div class="col-sm-10">
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
      <tr>
         
        <th><b>no</b></th>
        <th><b>date</b></th>
        <th><b>Title</b></th>
        <th><b>Message</b></th>
        <th><b>Description</b></th>
        <th><b>Action</b></th>
           
      </tr>
    </thead>
    
        <%
    Connection cn=null;
   Statement st=null;
//   int counter=1;
  
       try
       {
           Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
           String sql="select * from  notice ORDER BY ndate DESC ;";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
           %>
           <tbody>
            <tr>
        <form action="update_notice.jsp" method="POST">
            
        <td><%=rs.getString("notice_no")%></td>
      <input type="hidden" value="<%=rs.getString("notice_no")%>" style="border:solid black;"  name="txt_id"onkeypress="Javascript:return isNumber(event)" class="form-control">
         <td><%=rs.getString("ndate")%></td>
          <input value="<%=rs.getString("ndate")%>"style=" border:solid black;"  type="hidden"  name="txt_date" id="txt_date"  class="form-control"> 
      <td><%=rs.getString("notice_title")%></td>
      <input  type="hidden" values="<%=rs.getString("notice_title")%>"style="border:solid black;"  name="txt_title"onkeypress="Javascript:return isString(event)" placeholder="Enter Title" class="form-control">
         <td><%=rs.getString("message")%></td> 
      <input type="hidden" values="<%=rs.getString("message")%>"  style="border:solid black;"  name="txt_Message" onkeypress="Javascript:return isString(event)" placeholder="Enter Message" rows="2" cols="15" class="form-control">
         <td><%=rs.getString("Description")%></td> 
          <input type="hidden"values="<%=rs.getString("Description")%>" style="border:solid black;" name="txt_Description"  onkeypress="Javascript:return isString(event)"  placeholder="Enter Description" rows="2" cols="15" class="form-control">
        

         <td>
              <input type="submit" class="btn btn-success" name="btn_save" value="Update">
             <input type="submit" class="btn btn-danger" name="btn_save" value="Delete ">
           
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

   


