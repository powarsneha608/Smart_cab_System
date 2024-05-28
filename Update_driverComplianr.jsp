<%-- 
    Document   : Update_driverComplianr
    Created on : 24 Mar, 2023, 8:12:58 PM
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
        <title>Compliant user</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
             background-color: white;
             margin-top: 20px;
             padding-top: 20px; 
            border: 5px solid white;
            box-shadow: 0 15px 20px  black;
            
}
            
           a:hover {
                background-color: #03fc07;
            }
        

         body {
/*    background-image: url("img/Compliantbaack.jpg"); */
    background-color: #ffeeba; 
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
        <form action="drivercompliant" method="POST">
           
        <script src="validation.js"></script>
        <div class="container-fluid" >
            <form action="Update_driverCompliant" method="POST">
        <div class="row">
            <div class="col-sm-3"></div>
             <div class="col-sm-6">
                 
                 
                 <div class="container">
                     <div class="row">
                          <div class="col-sm-3">
                              <img src="img/Complint.jpg"height="100" width="200">
                          </div>
                          <div class="col-sm-9">
                     <center><h1><b>Driver Compliant</b></h1></center>
                       
                         </div>
                     </div>
                     <hr style="height:2px;border-width:0;color:white;background-color:black">
                         <br>
        
                          <div class="row">
                     
                         <div class="col-sm-6">
                             <label><b>Compliant id</b></label>
                             <input readonly=""value="<%=request.getParameter("txt_id")%>"onkeypress="javascript:return isNumber(event)" type="text" name="txt_id" placeholder=" Compliant id"  class="form-control">
                         </div>
                         <div class="col-sm-6 ">
                             <label><b> Name</b></label><span style="color:red">*</span>
                             <input readonly="" required="" value="<%=request.getParameter("txt_name")%>"onkeypress="javascript:return isString(event)" type="text" name="txt_name" placeholder="Enter Name" class="form-control">
                         </div>
                     </div>
                     
                     <div class="row">
                         <div class="col-sm-6">
                             <label><b>Email</b></label><span style="color:red">*</span>
                             <input  style="border:solid black"readonly="" required="" value="<%=request.getParameter("txt_email")%>"type="Email" name="txt_email" placeholder="Enter Email id"  class="form-control">
                         </div>
                         <div class="col-sm-6 ">
                             <label><b>Contact</b></label><span style="color:red">*</span>
                             <input readonly="" required="" value="<%=request.getParameter("txt_number")%>" onkeypress="javascript:return isNumber(event)"maxlength="10" type="text"    name="txt_number" placeholder="Enter contact number" class="form-control">
                         </div>
                     </div>
                   
                     
                    
                     
                     <div class="row">
                         <div class="col-sm-12">
                             <label><b>Compliant title</b></label><span style="color:red">*</span>
                             <input readonly="" required="" value="<%=request.getParameter("txt_title")%>" onkeypress="javascript:return isString(event)"type="text" name="txt_title" placeholder="Enter Title"  class="form-control">
                         </div> 
                    </div>
                   
                     
                     <div class="row">
                         <div class="col-sm-6">
                                 <label><b>Message </b></label><span style="color:red">*</span>
                            <textarea readonly="" style=" border:solid black;" name="message" class="form-control" placeholder="Enter Message (in 100 words)" rows="2" cols="15"><%=request.getParameter("message")%></textarea>
                             </div>
                         <div class="col-sm-6">
                                 <label><b>Description</b></label><span style="color:red">*</span>
                            <textarea readonly="" style=" border:solid black;" name="discription" class="form-control" placeholder="Write Discription (in 100 words)" rows="2" cols="15"><%=request.getParameter("discription")%></textarea>
                             </div>
                     </div>
                    
                      <div class="row">
                       <div class="col-sm-12">
                                 <label><b>Solution</b></label><span style="color:red">*</span>
                            <textarea  required="" style=" border:solid black;" name="solution" class="form-control" placeholder="Write Discription (in 100 words)" rows="2" cols="15"><%=request.getParameter("solution")%>"</textarea>
                             </div>
                 </div>
                             <br>
                             
                   <div class="row">
                        
                      <div class="col-sm-6">
                             <input style=" border:solid black;" type="submit" name="btn_save" class="btn btn-success form-control" value="Update">
                         </div>
                      <br>
                     
                      <div class="col-sm-6">
                             <input style=" border:solid black;" type="submit" name="btn_save" class="btn btn-danger form-control" value="Delete">
                         </div>
                      <br>
                      
                     
                     </div>
                 </div>
                 
                   </div>
                   </div>
                 
            
              <div class="col-sm-3"></div>
        </form>
        </div>
        </form>  
    </body>
</html>


