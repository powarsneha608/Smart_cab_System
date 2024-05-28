   
<%-- 
    Document   : User_Registration
    Created on : 17 Feb, 2023, 11:30:00 PM
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
        <form action="user_Registration" method="POST">
             <%           
            Connection cn=null;
            Statement st=null;
            String id="1";
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
           String sql="select * from user_registration";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("us_id"))+1);
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        }
            
%>
         <script src="validation.js"></script>
           <script type="text/javascript">
     window.onload=function(){
     var today = new Date().toISOString().split('T')[0];
     document.getElementsByName("txt_date")[0].setAttribute('max', today);
    }
    </script>
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
                             <input value="<%=id%>" style="border:solid black;"   type="text" name="txt_id" onkeypress="Javascript:return isNumber(event)" placeholder="Enter id" class="form-control">
                         </div>
                         <div class="col-sm-6">
                             <label><b>Full Name</b></label><span style="color:red">*</span>
                             <input  required=""  style="border:solid black;" type="text" name="txt_fname"onkeypress="Javascript:return isString(event)" placeholder="Enter Full Name" class="form-control">
                         </div>
                     </div>
                     <br>         
                      <div class="row">
                           <div class="col-sm-4">
                             <label><b>Address</b></label><span style="color:red">*</span>
                            <textarea  required="" style="border:solid black;" name="address" class="form-control" onkeypress="Javascript:return isAlphanumeric(event)" placeholder="Enter Address" rows="1" cols="15"></textarea>
                         </div>
                          <div class="col-sm-4">
                             <label><b>Contact</b></label><span style="color:red">*</span>
                             <input   required="" style="border:solid black;" type="text" id="txt_no" name="txt_no"   maxlength="10" placeholder="Enter Contact" class="form-control">
                         </div>
                           <div class="col-sm-4">
                             <label><b>User image</b></label><span style="color:red">*</span>
                             <input  required="" style="border:solid black;" type="file" name="file_image"  class="form-control">
                         </div>
                          
                     </div>
                     <br>
                      <div class="row">
                         <div class="col-sm-6">
                             <label><b>Email</b></label><span style="color:red">*</span>
                            <input   required="" style="border:solid black;" type="text" name="txt_email" id="txt_no" placeholder="Enter Email" class="form-control">
                         </div>
                          <div class="col-sm-6">
                             <label><b>Date of Birth</b></label><span style="color:red">*</span>
                            <input  required="" style="border:solid black;" name="txt_date" type="date" id="txt_no" placeholder="Enter Email" class="form-control">
                         </div>
                     </div>
                     <br>
                      <div class="row">
                         <div class="col-sm-6">
                             <label><b>Username</b></label><span style="color:red">*</span>
                            <input   required="" style="border:solid black;" type="text"name="txt_User" id="txt_no" placeholder="Enter Username" class="form-control">
                         </div>
                          <div class="col-sm-6">
                             <label><b>Password</b></label><span style="color:red">*</span>
                             <input   required="" style="border:solid black;" type="text" maxlength="12"  minlength="6" name="txt_Pass" id="txt_no" placeholder="Enter password" class="form-control">
                         </div>
                     </div>
                 <br>
                  <div class="row">
                    
                         <div class="col-sm-6">
                             <input  style="border:solid black;" type="submit" name="btn_save" class="btn btn-primary form-control" value="Submit">
                         </div>
                      <br>
                      <br>
                     <div class="col-sm-6">
<!--                            <input style="border:solid black;" type="submit" name="btn_save" class="btn btn-danger form-control" value="Cancle">-->
                             <a href="userLogin.jsp" style="border:solid black" class="btn btn-danger btn-fill form-control">Cancel</a>
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
