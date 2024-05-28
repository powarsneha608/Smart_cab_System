<%-- 
    Document   : List_rules
    Created on : 24 Mar, 2023, 7:08:58 PM
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
        <title>update_Rules </title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
              background-color: #D6EAF8;
             margin-top: 30px;
             margin-bottom: 50px;
             padding-top: 20px; 
             padding-bottom: 50px;
             margin-left: 300px;
             margin-right:300px;
            border: 3px solid white;
            opacity: 0.8;
            box-shadow: 0 15px 20px black;
          }
          
           a:hover {
                background-color: #03fc07;
            }
          body{
             
              background-image: url("img/Rules.jpg"); /* The image used */
         background-color: white; /* Used if the image is unavailable */
         background-repeat: no-repeat; /* Do not repeat the image */
         background-size: 700px 750px; /* Resize the background image to cover the entire container */
          }
           input[type=text],[type=file]
          {
              border: solid;
          }
        </style>
    </head>
    <body>
         <%@include file="Header_Admin.jsp"%>
          <form action="Rules" method="POST">
 
        <script src="validation.js"></script>
        <div class="container-fluid" >
        <div class="row">
            <div class="col-sm-6"></div>
             <div class="col-sm-6">
                 
                 <div class="container">
                     <div class="row">
                      <div class="col-sm-4">
                     <img src="img/Rule1.jpg" height="110" width="200">
                     </div>
                     <div class="col-sm-5">
                         <br>
                       <center><h1 style="color:green"><b>Rules</b></h1></center>
                     </div>
                          
                   </div>
                      <hr style="height:2px;border-width:0;color:white;background-color:black">
                     <br>
                     <div class="row">
                         <div class="col-sm-12">
                             <label><b>Number</b></label>
                             <input value="<%=request.getParameter("txt_id")%>" type="text" name="txt_id" onkeypress="Javascript:return isNumber(event)" placeholder="Enter Number" class="form-control">
                        </div>
                     </div>
                         <br>
                         <div class="row">
                         <div class="col-sm-12">
                             <label><b>Rules</b></label><span style="color:red">*</span>
                             <textarea style="border:solid black;" type="text" name="txt_rules"  onkeypress="Javascript:return isString(event)" placeholder="Enter Rules" rows="2" cols="15"class="form-control"><%=request.getParameter("txt_rules")%></textarea>
                         </div>
                     </div>
                     <br>         
                      <div class="row">
                           <div class="col-sm-12"><span style="color:red">*</span>
                             <label><b>Description(in 100 words)</b></label>
                            <textarea style="border:solid black;" type="text" name="txt_description" onkeypress="Javascript:return isString(event)" placeholder="Enter Description" rows="2" cols="15"class="form-control"><%=request.getParameter("txt_description")%></textarea>
                         </div>
                     </div>
                     <br>
                 <br>
                  <div class="row">

                      <div class="col-sm-6">
                          <input style="border:solid black;" type="submit" name="btn_save" class="btn btn-success form-control" value="Update">
                         </div>
                      <br>
                      <br>
                        <div class="col-sm-6">
                             <input style="border:solid black;" type="submit" name="btn_save" class="btn btn-danger form-control" value="Delete">
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


