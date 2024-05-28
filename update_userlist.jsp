<%-- 
    Document   : update_userlist
    Created on : 12 Apr, 2023, 8:28:20 PM
    Author     : Snehal
--%>

 

 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
               background-color:white ;
              margin-top: 30px;
              margin-bottom: 10px;
             /* margin-left: -360px;*/
              padding-top: 30px;
              padding-bottom: 50px;
              border: 5px solid white;
            opacity: 0.8;
              box-shadow: 0 15px 20px black;
              
          
          }
           a:hover {
                background-color: #03fc07;
            }
          
          body{
               background-image: url("img/power1.jpg"); /* The image used */
               background-color: white; /* Used if the image is unavailable */
               /* You must set a specified height */
               background-position: center; /* Center the image */
               background-repeat: no-repeat; /* Do not repeat the image */
               background-size: cover; /* Resize the background image to cover the entire container */
          }
          input[type=text],[type=file]
          {
              border: solid;
          }
        </style>
    </head>
    <body>
         <%@include file="Header_Admin.jsp"%>
        <form action="user_Registration" method="POST">
         <script src="validation.js"></script>
        <div class="container-fluid" >
        <div class="row">
            <div class="col-sm-3"></div>
             <div class="col-sm-6">
                 
                 <div class="container">
                      <div class="row">
                          <div class="col-sm-4">
                             <img src="img/icon.jpg"height="100" width="200">
                          </div>
                     
                         <br>
                         <br>
                         <div class="col-sm-8">
                             <br>
                             
                             <center><h1 style="color:blue" ><b>User Registration</b></h1></center>
                       
                         </div>
                     </div>
                     <hr style="height:2px;border-width:0;color:white;background-color:black">
                  
                     <div class="row">
                         <div class="col-sm-6">
                             <label><b>Registration id</b></label>
                             <input  style="border:solid black;"  value="<%=session.getAttribute("fullname")%>" type="text" name="txt_id" onkeypress="Javascript:return isNumber(event)" placeholder="Enter id" class="form-control">
                         </div>
                         <div class="col-sm-6">
                             <label><b>Full Name</b></label>
                             <input  style="border:solid black;" type="text" value="<%=session.getAttribute("fullname")%>" name="txt_fname"onkeypress="Javascript:return isString(event)" placeholder="Enter Full Name" class="form-control">
                         </div>
                     </div>
                     <br>         
                      <div class="row">
                           <div class="col-sm-6">
                             <label><b>Address</b></label>
                            <textarea style="border:solid black;" name="address" class="form-control" onkeypress="Javascript:return isAlphanumeric(event)" placeholder="Enter Address" rows="1" cols="15"></textarea>
                         </div>
                          <div class="col-sm-6">
                             <label><b>Contact</b></label>
                             <input  style="border:solid black;" type="text" id="txt_no" name="txt_no"  onkeypress="Javascript:return isNumber(event)" maxlength="10" placeholder="Enter Contact" class="form-control">
                         </div>
                     </div>
                     <br>
                      <div class="row">
                         <div class="col-sm-6">
                             <label><b>Email</b></label>
                            <input  style="border:solid black;" type="text" name="txt_email" id="txt_no" placeholder="Enter Email" class="form-control">
                         </div>
                          <div class="col-sm-6">
                             <label><b>Date of Birth</b></label>
                            <input style="border:solid black;" name="txt_date" type="date" id="txt_no" placeholder="Enter Email" class="form-control">
                         </div>
                     </div>
                     <br>
                      <div class="row">
                         <div class="col-sm-6">
                             <label><b>Username</b></label>
                            <input  style="border:solid black;" type="text"name="txt_User" id="txt_no" placeholder="Enter Username" class="form-control">
                         </div>
                          <div class="col-sm-6">
                             <label><b>Password</b></label>
                            <input  style="border:solid black;" type="text" name="txt_Pass" id="txt_no" placeholder="Enter password" class="form-control">
                         </div>
                     </div>
                 <br>
                  <div class="row">
                    
                         <div class="col-sm-6">
                             <input  style="border:solid black;" type="submit" name="btn_save" class="btn btn-primary form-control" value="Update">
                         </div>
                      <br>
                      <br>
                      <div class="col-sm-6">
                             <input  style="border:solid black;" type="submit" name="btn_save" class="btn btn-danger form-control" value="Cancle">
                         </div>
                     
                     </div>
                 </div>
                 
                   </div>
                 
             </div>
              <div class="col-sm-3"></div>
        </div>  
    </form>
    </body>
</html>

