<%-- 
    Document   : userfeedback
    Created on : 24 Feb, 2023, 2:20:18 PM
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
        <title>User Feedback</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
             background-color: white;
             margin-top: 50px;
             margin-bottom: 50px;
             padding-bottom: 50px;
             margin-left: 300px;
             margin-right: 300px;
             border: 3px solid white;
            opacity: 0.9;
             box-shadow: 0 15px 20px black;
          }
           a:hover {
                background-color: #03fc07;
            }
          body{
              background-image: url("img/feedback1.jpg"); /* The image used */
               background-color: white ; /* Used if the image is unavailable */
             /*  height: 800px; /* You must set a specified height */
              /* background-position: center; /* Center the image */
               background-repeat: no-repeat; /* Do not repeat the image */
               background-size: 700px 750px; 
               margin-top: 40px;
               margin-bottom: 10px;/* Resize the background image to cover the entire container */
          }
           input[type=text],[type=file]
          {
              border: solid;
          }
        </style>
    </head>
    <body>
        <%@include file="Header_User.jsp"%>
        <form action="User_Feedback" method="POST">
             <%           
            Connection cn=null;
            Statement st=null;
            String id="1";
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
           String sql="select * from user_feedback";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("user_feedback_id"))+1);
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        }
            
%>
        <script src="validation.js"></script>
        <div class="container-fluid" >
        <div class="row">
            <div class="col-sm-5"></div>
             <div class="col-sm-6">
                 
                 <div class="container">
                     <br>
                     <center><h1 style="color:blue"><b>User Feedback</b></h1></center>
                     
                      <hr style="height:3px;border-width:0;color:white;background-color:black">
                     <br>
                     <div class="row">
                         <div class="col-sm-6">
                             <label><b>Feedback id</b></label>
                             <input value="<%=id%>"  value="<%=session.getAttribute("us_id")%>"style="border:solid black;" type="text" name="txt_id" onkeypress="Javascript:return isNumber(event)" placeholder="Enter Feedback id" class="form-control">
                         </div>
                         <div class="col-sm-6">
                             <label><b>Full Name</b></label><span style="color:red">*</span>
                             <input   required="" value="<%=session.getAttribute("fullname")%>"style="border:solid black;" type="text" name="txt_fname" onkeypress="Javascript:return isString(event)" placeholder="Enter Full Name" class="form-control">
                         </div>
                     </div>
                         
                      <div class="row">
                           <div class="col-sm-6">
                               <label><b>Email</b></label><span style="color:red">*</span>
                               <input  required="" value="<%=session.getAttribute("Email")%>" style="border:solid black;" type="Emial" id="txt_Email" name="txt_Email" placeholder="Enter Email" class="form-control">
                             </div>
                          <div class="col-sm-6">
                              <label><b>Contact</b></label><span style="color:red">*</span>
                            <input  required="" value="<%=session.getAttribute("contact")%>"style="border:solid black;"type="text" id="txt_no" name="contact" onkeypress="Javascript:return isContactno(event)" maxlength="10" placeholder="Enter Contact" class="form-control">
                         </div>
                     </div>
                    
                      <div class="row">
                         <div class="col-sm-6">
                              <label><b>Address</b></label><span style="color:red">*</span>
                            <textarea required=""  style="border:solid black;" name="txt_address" class="form-control" onkeypress="Javascript:return isAlphanumaric(event)" placeholder="Enter Address" rows="2" cols="15"></textarea>
                         </div>
                          <div class="col-sm-6">
                             <label><b>Message</b></label><span style="color:red">*</span>
                             <textarea style="border:solid black;" name="txt_Message" onkeypress="Javascript:return isString(event)" placeholder="Enter Message" class="form-control" rows="2" cols="15"></textarea>
                         </div>
                     </div>
                     <br>
                     <br>
                
                  <div class="row">
                      <div class="col-sm-4"></div>
                         <div class="col-sm-3">
                             <input  style="border:solid black;" type="submit" name="btn_save" class="btn btn-primary form-control" value="Submit">
                         </div>
                      <div class="col-sm-4">
<!--                            <input style="border:solid black;" type="submit" name="btn_save" class="btn btn-danger form-control" value="Cancle">-->
                             <a href="userfeedback.jsp"class="btn btn-danger btn-fill">Cancel</a>
                         </div>
                      <div class="col-sm-1"></div>
                     </div>
                 </div>
                 
                   </div>
                 
             </div>
              <div class="col-sm-3"></div>
        </div>
        </form>>    
    </body>
</html>

