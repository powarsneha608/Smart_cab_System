<%-- 
    Document   : Update_Driver_reg
    Created on : 26 Apr, 2023, 10:25:31 PM
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
        <title>Update_Driver_reg</title>
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
        <%@include file="Header_Driver.jsp"%>
        <form action="driverregistration" method="POST">
           
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
                         <div class="col-sm-4">
                             <label><b> Driver id</b></label>
                             <input  value="<%=request.getParameter("txt_id")%>" style="border:solid black;" type="text" name="txt_id" onkeypress="Javascript:return isNumber(event)"  placeholder="Enter id" class="form-control">
                         </div>
                         <div class="col-sm-4">
                             <label><b>Full Name</b></label><span style="color:red">*</span>
                             <input  readonly=""value="<%=request.getParameter("txt_fname")%>" required="" style="border:solid black;" type="text" name="txt_fname" onkeypress="Javascript:return isString(event)"  placeholder="Enter Full Name" class="form-control">
                         </div>
                          <div class="col-sm-4">
                             <label><b>Address</b></label><span style="color:red">*</span>
                             <textarea  required="" style="border:solid black;" name="txt_address" class="form-control"onkeypress="Javascript:return isAlphanumeric(event)" placeholder="Enter Address" rows="1" cols="15"><%=request.getParameter("txt_address")%></textarea>
                         </div>
                     </div>
                     <br>         
                      <div class="row">
                         <div class="col-sm-4">
                             <label><b>Contact</b></label><span style="color:red">*</span>
                            <input value="<%=request.getParameter("contact")%>" required=""  style="border:solid black;" type="text" id="txt_no" name="contact"  onkeypress="Javascript:return isContactno(event)" maxlength="10"  placeholder="Enter Contact" class="form-control">
                         </div>
                           <div class="col-sm-4">
                             <label><b>Email</b></label><span style="color:red">*</span>
                            <input value="<%=request.getParameter("txt_email")%>" required="" style="border:solid black;" type="email" id="txt_no" name="txt_Email" placeholder="Enter Email" class="form-control">
                         </div>
                            <div class="col-sm-4">
                             <label><b>Date of Birth</b></label><span style="color:red">*</span>
                            <input value="<%=request.getParameter("txt_date")%>" required="" style="border:solid black;" type="date" name="txt_date" id="txt_no" placeholder="Enter Dtah of birth" class="form-control">
                         </div> 
                     </div>
                     <br>
                      <div class="row">

                           <div class="col-sm-12">
                             <label><b>Driver Type</b></label><span style="color:red">*</span>
                             <select  required="" style=" border:solid black;" name="txt_Drivertype" class="form-control">
                                 <option selected >select driver type</option>
                                  <option selected="" ><%=request.getParameter("txt_Drivertype")%></option>
                                 <option>Cab</option>
                                 <option>Auto</option>
                             </select>
                         </div>
                     </div>
                      <br>
                      <div class="row">
                             <div class="col-sm-4">
                             <label><b>Gender</b></label><span style="color:red">*</span>
                             <br>
                             <input value="<%=request.getParameter("gender")%>" required="" style="border:solid black;"type="radio" name="gender" value="Male" class="from-control">Male
                             <input value="<%=request.getParameter("gender")%>" required="" style="border:solid black;"type="radio" name="gender" value="Male" class="from-control">Female

                             </div>
                            <div class="col-sm-4">
                             <label><b>License Number</b></label><span style="color:red">*</span>
                             <input value="<%=request.getParameter("txt_text")%>" required="" style="border:solid black;" type="text" name="txt_text" id="txt_no" placeholder="Enter Number" class="form-control">
                         </div>
                          <div class="col-sm-4">
                             <label><b>Driver Experience</b></label><span style="color:red">*</span>
                            <input value="<%=request.getParameter("txt_no")%>" required="" style="border:solid black;" type="Number" name="txt_no" id="txt_no" placeholder="Enter Exprience" class="form-control">
                         </div>
                          </div>
                 
                      <div class="row">
                         <div class="col-sm-12">
                             <label><b>Diver image</b></label><span style="color:red">*</span>
                             <input value="<%=request.getParameter("file_image")%>" required="" style="border:solid black;" type="file" name="file_image"  class="form-control">
                         </div>
                      </div>
                 <br>
                  <div class="row">
                      
                         <div class="col-sm-6">
                             <input style="border:solid black;"type="submit" name="btn_save" class="btn btn-primary form-control" value="Update">
                         </div>
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


