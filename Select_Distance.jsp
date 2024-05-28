<%-- 
    Document   : Select_Distance
    Created on : 25 Apr, 2023, 9:56:05 AM
    Author     : Snehal
--%>

<%-- 
    Document   : Admin_Add_Distance
    Created on : 24 Apr, 2023, 7:03:30 PM
    Author     : Snehal
--%>



<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> select Distance</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
              background-color: white;
             margin-top: 20px;
             margin-bottom: 20px;
            
             padding-top: 10px;
             padding-bottom: 10px;
            /*border: 10px solid black;*/
            opacity: 0.8;
             box-shadow: 0 15px 20px  black;
          }
           a:hover {
                background-color: #03fc07;
            }
          body{
  /*background-image: url("");*/
  
  background-repeat: no-repeat;
  background-color:  #D1F2EB;
  background-size: 700px 700px;
  background-position: center;
/* background-attachment: fixed;*/
 
          }
input[type=text],[type=file],[type=date],[type=time]
{
    border: solid;
}
        </style>
    </head>
    <body>
         <%@include file="Header_User.jsp"%>
       <form action="Select_Distance" method="POST">
            <%           
            Connection cn=null;
            Statement st=null;
            String id="1";
            
            
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
           String sql="select * from Admin_Add_Distance ";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("id"))+1);
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        }
            
%>
       <script src="validation.js"></script> 
        <div class="container-fluid" >
        <div class="row">
            <div class="col-sm-3"></div>
             <div class="col-sm-6">
                 
                 <div class="container">
                       <div class="row">
                           <div class="col-sm-7">
                               <br>
                     <center><h1><b>Select Route</b></h1></center>
                          </div>
                          <div class="col-sm-5">
                              <img src="img/iconbooking.jpg" height="100" width="200">
                          </div>
                     
                         
                         <br>
                         
                          
                       </div>
                             
                     <hr style="height:3px;border-width:0;color:white;background-color:black">
                     
                     
                 
                          <div class="row">
                        <div class="col-sm-6">
                               <label><b>Address To</b></label><span style="color:red">*</span>
                               <select style="border:solid black"  required="" name="txt_picaddress" class="form-control"
                                       
                                    <option selected>select your Route</option>
                    <%
          try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
                                              }
                    catch(Exception ex)
                    {
                        out.println(ex);
                        
                    }
                    
                    
                                      
                      try
                        {
                          st=cn.createStatement();
                          String sql="select * from Admin_Add_Distance ";
                          ResultSet rs=st.executeQuery(sql);
                          while(rs.next())
                           {
                              
                              %>
                              
                              <option><%=rs.getString("add_to")%></option>
                              
                              <%
                             
                           }
                        }
                      catch(Exception ex)
                         {
                          out.println(ex);
                         }           

%>
                    </select>
                           </div>
                               <div class="col-sm-6">
                                <label><b>Address From</b></label><span style="color:red">*</span>
                               <select style="border:solid black"  required="" name="txt_dropaddress" class="form-control"
                                       
                                    <option selected>select your Route</option>
                    <%
          try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
                                              }
                    catch(Exception ex)
                    {
                        out.println(ex);
                        
                    }
                    
                    
                                      
                      try
                        {
                          st=cn.createStatement();
                          String sql="select * from Admin_Add_Distance ";
                          ResultSet rs=st.executeQuery(sql);
                          while(rs.next())
                           {
                              
                              %>
                              
                              <option><%=rs.getString("add_from")%></option>
                              
                              <%
                             
                           }
                        }
                      catch(Exception ex)
                         {
                          out.println(ex);
                         }           

%>
                    </select>
                           </div>
                         </div>
                         
                     
                 <br>
                
                         <br>
                         <br>
                 
                  <div class="row">
                      <div class="col-sm-3"></div>
                     
                         <div class="col-sm-6">
                             <input style=" border:solid black;"  type="submit" name="btn_save" class="btn btn-success form-control" value="Select">
                         </div>
                      <br>
                         <br>
                       <div class="col-sm-3"></div>
                      
                     </div>
                 
                 
                 
            
              <div class="col-sm-3"></div>
        </div>
            </div>
       </form>
    </body>
</html>


