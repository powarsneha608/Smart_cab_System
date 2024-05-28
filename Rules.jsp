<%-- 
    Document   : Rules
    Created on : 24 Feb, 2023, 8:12:27 PM
    Author     : Snehal
--%>



<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> driver Rules </title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
              background-color: White;
             margin-top: 50px;
             margin-bottom: 10px;
             padding-top: 20px; 
             padding-bottom: 20px;
             margin-left: 300px;
             margin-right:300px;

            opacity: 0.8;
            box-shadow: 0 15px 20px grey;
          }
          
           a:hover {
                background-color: #03fc07;
            }
          body{
             
              background-image: url("img/D_Rules.jpg"); /* The image used */
         background-color: white; /* Used if the image is unavailable */
         background-repeat: no-repeat; /* Do not repeat the image */
         background-size: 750px 750px; /* Resize the background image to cover the entire container */
          }
           input[type=text],[type=file]
          {
              border: solid;
          }
        </style>
    </head>
    <body>
        <%@include file="Header_Admin.jsp"%>
          <form action="Rule" method="POST">
               <%           
            Connection cn=null;
            Statement st=null;
            String id="1";
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
           String sql="select * from rules";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("rules_no"))+1);
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        }
            
%>
        <script src="validation.js"></script>
        <div class="container-fluid" >
        <div class="row">
            <div class="col-sm-6"></div>
             <div class="col-sm-6">
                 
                 <div class="container">
                     <div class="row">
                      <div class="col-sm-4">
                     <img src="img/Rule.jpg" height="110" width="200">
                     </div>
                     <div class="col-sm-5">
                         <br>
                       <center><h1 style="color:blue"><b>Rules</b></h1></center>
                     </div>
                          
                   </div>
                      <hr style="height:2px;border-width:0;color:white;background-color:black">
                     <br>
                     <div class="row">
                         <div class="col-sm-12">
                             <label><b>Number</b></label>
                             <input style="border:solid black;" required="" value="<%=id%>" type="text" name="txt_id" onkeypress="Javascript:return isNumber(event)" placeholder="Enter Number" class="form-control">
                        </div>
                     </div>
                         <br>
                         <div class="row">
                         <div class="col-sm-12">
                             <label><b>Rules</b></label><span style="color:red">*</span>
                             <textarea  required="" style="border:solid black;" type="text" name="txt_rules" class="form-control"  placeholder="Enter Rules" rows="2" cols="15"></textarea>
                         </div>
                     </div>
                     <br>         
                      <div class="row">
                           <div class="col-sm-12">
                             <label><b>Description(in 100 words)</b></label><span style="color:red">*</span>
                            <textarea style="border:solid black;" type="text" name="txt_description" class="form-control" placeholder="Enter Description" rows="2" cols="15"></textarea>
                         </div>
                     </div>
                     <br>
                 <br>
                  <div class="row">
                      <div class="col-sm-3"></div>
                         <div class="col-sm-6">
                             <input style="border:solid black;" type="submit" name="btn_save" class="btn btn-primary form-control" value="Insert">
                         </div>
                       <div class="col-sm-3"></div>
                     </div>
                 </div>
                 
                   </div>
                 
             </div>
              <div class="col-sm-3"></div>
        </div>
            </form>
    </body>
</html>

