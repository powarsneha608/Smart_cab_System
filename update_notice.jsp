<%-- 
    Document   : update_notice
    Created on : 24 Mar, 2023, 3:17:42 PM
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
        <title>Update Notice</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {  
              background-color:white;
              
          padding-top: 10px;
          padding-bottom: 10px;
          margin-top: 150px;
          margin-bottom: 100px;
            box-shadow: 0 15px 20px black;
          opacity: 0.8;
          }
          
           a:hover {
                background-color: #03fc07;
            }
          body{
               background-image: url("img/Mat_Skyblue.png"); /* The image used */
               background-color:#ccffff; /* Used if the image is unavailable */
                background-repeat: no-repeat; /* Do not repeat the image */
                background-size:2000px 2000px; /* Resize the background image to cover the entire container */
                background-position:center;
                
          }
           input[type=text],[type=file]
          {
              border: solid;
          }
        </style>
    </head>
    <body>
        <form action="Notice" method="POST">
         <%@include file="Header_Admin.jsp"%>
        
            
         <script src="validation.js"></script>
         <script type="text/javascript">
     window.onload=function(){
     var today = new Date().toISOString().split('T')[0];
     document.getElementsByName("txt_date")[0].setAttribute('min', today);
//      document.getElementsByName("txt_date")[0].setAttribute('max', today);
     
    }
    

      </script>
        <div class="container-fluid">
        <div class="row">
            <div class="col-sm-3">
                
            </div>
             <div class="col-sm-6">
                 
                 <div class="container">
                      <div class="row">
                          <div class="col-sm-2">
                              <img src="img/download.png"height="100" width="200">
                          
                              </div>
                          <div class="col-sm-10">
                              <br>
                              <center><h1 style="color:blue "><b>Notice</b></h1></center>
                       
                         </div>
                     </div>
                     <hr style="height:2px;border-width:0;color:white;background-color:black">
                     <br>
                     <div class="row">
                         <div class="col-sm-6">
                             <label><b>Id</b></label>
                             <input  value="<%=request.getParameter("txt_id")%>"  style="border:solid black;" type="text" name="txt_id"onkeypress="Javascript:return isNumber(event)" class="form-control">
                         </div>
                        
                          <div class="col-sm-6">
                             <label><b>Date</b></label><span style="color:red">*</span>
                            <input  required="" value="<%=request.getParameter("txt_date")%>"style=" border:solid black;"  type="date"  name="txt_date" id="txt_date"  class="form-control">
                         </div>
                          </div>
                          <div class="row">   
                         <div class="col-sm-12">
                             <label><b>Title</b></label><span style="color:red">*</span>
                             <input  value="<%=request.getParameter("txt_title")%>" style="border:solid black;" type="text" name="txt_title"onkeypress="Javascript:return isString(event)" placeholder="Enter Title" class="form-control">
                         </div>
                     </div>
                     <br>
                           
                      <div class="row">
                           <div class="col-sm-6">
                             <label><b>Message(in 100 words)</b></label><span style="color:red">*</span>
                            <textarea style="border:solid black;" type="text" name="txt_Message" class="form-control" onkeypress="Javascript:return isString(event)" placeholder="Enter Message" rows="2" cols="15"><%=request.getParameter("txt_Message")%></textarea>
                         </div>
                          <div class="col-sm-6">
                             <label><b>Description(in 200 words)</b></label><span style="color:red">*</span>
                           <textarea style="border:solid black;" type="text" name="txt_Description" class="form-control"onkeypress="Javascript:return isString(event)"  placeholder="Enter Description" rows="2" cols="15"><%=request.getParameter("txt_Description")%></textarea>
                         </div>
                     </div>
                     <br>
                     <br>
              
                  <div class="row">
                         
                      <div class="col-sm-6">
                             <input style="border:solid black;" type="submit" name="btn_save" class="btn btn-success form-control" value="Update">
                         </div>
                      <br>
                        <div class="col-sm-6">
                          <input  style="border:solid black;" type="submit" name="btn_save" class="btn btn-danger form-control" value="Delete">
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


