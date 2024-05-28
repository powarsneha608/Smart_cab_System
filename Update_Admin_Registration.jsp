<%-- 
    Document   : Update_Admin_Registration
    Created on : 27 Apr, 2023, 11:04:25 PM
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
        <title>Update_Admin_Registration</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
             background-color: white;
             margin-top: 20px;
             padding-top: 20px; 
             padding-bottom: 30px;
            border: 5px solid white;
            box-shadow: 0 15px 20px  black;
            
}
            
           a:hover {
                background-color: #03fc07;
            }
        

         body {
/*    background-image: url("img/Compliantbaack.jpg"); */
    background-color: White; 
  background-position: center; /* Center the image */
  background-repeat: no-repeat; 
 
  background-size: 1600px 1600px;   
 
         }


input[type=text],[type=file],[type=Email]
{
    border: solid;
}


       
          
          
            
        </style>
    </head>
    <body>
                <%@include file="Header_Admin.jsp"%>

        <form action="Admin_Registration" method="POST">
           
        <script src="validation.js"></script>
        <div class="container-fluid" >
           
        <div class="row">
            <div class="col-sm-3"></div>
             <div class="col-sm-6">
                 
                 
                 <div class="container">
                     <div class="row">
<!--                          <div class="col-sm-3">
                              <img src="img/Complint.jpg"height="100" width="200">
                          </div>-->
                          <div class="col-sm-12">
                     <center><h1><b>Update information</b></h1></center>
                       
                         </div>
                     </div>
                     <hr style="height:2px;border-width:0;color:white;background-color:black">
                         <br>
        
                           <div class="row">
                        
                             
                             <input  value="<%=request.getParameter("txt_id")%>" style="border:solid black;" type="hidden" name="txt_id" onkeypress="Javascript:return isNumber(event)"  placeholder="Enter id" class="form-control">
                        
                         <div class="col-sm-4">
                             <label><b>Full Name</b></label><span style="color:red">*</span>
                             <input  readonly=""value="<%=request.getParameter("txt_fname")%>" required="" style="border:solid black;" type="text" name="txt_fname" onkeypress="Javascript:return isString(event)"  placeholder="Enter Full Name" class="form-control">
                         </div>
                          <div class="col-sm-4">
                             <label><b>Address</b></label><span style="color:red">*</span>
                             <textarea  required="" style="border:solid black;" name="txt_address" class="form-control"onkeypress="Javascript:return isAlphanumeric(event)" placeholder="Enter Address" rows="1" cols="15"><%=request.getParameter("txt_address")%></textarea>
                         </div>
                          <div class="col-sm-4">
                             <label><b>Admin image</b></label><span style="color:red">*</span>
                             <input value="<%=request.getParameter("file_image")%>" required="" style="border:solid black;" type="file" name="file_image"  class="form-control">
                         </div>
                     </div>
                     <br>         
                      <div class="row">
                         <div class="col-sm-4">
                             <label><b>Contact</b></label><span style="color:red">*</span>
                            <input value="<%=request.getParameter("txt_contact")%>" required=""  style="border:solid black;" type="text" id="txt_no" name="txt_contact"  onkeypress="Javascript:return isContactno(event)" maxlength="10"  placeholder="Enter Contact" class="form-control">
                         </div>
                           <div class="col-sm-4">
                             <label><b>Email</b></label><span style="color:red">*</span>
                            <input value="<%=request.getParameter("txt_email")%>" required="" style="border:solid black;" type="txt_email" id="txt_no" name="txt_Email" placeholder="Enter Email" class="form-control">
                         </div>
                            <div class="col-sm-4">
                             <label><b>Date of Birth</b></label><span style="color:red">*</span>
                            <input value="<%=request.getParameter("txt_date")%>" required="" style="border:solid black;" type="date" name="txt_date" id="txt_no" placeholder="Enter Dtah of birth" class="form-control">
                         </div> 
                     </div>
                     <br>
                      
                    
                 
                  <div class="row">
                      <div class="col-sm-4"></div>
                         <div class="col-sm-4">
                             <input style="border:solid black;"type="submit" name="btn_save" class="btn btn-primary form-control" value="Update">
                         </div>
                        <div class="col-sm-4"></div>
                      <br>
                      <br>
                      
                      
                     </div>
                 </div>
                 
                   </div>
                   </div>
                 
            
              <div class="col-sm-3"></div>
       
        </div>
        </form>  
    </body>
</html>




