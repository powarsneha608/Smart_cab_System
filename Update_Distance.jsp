<%-- 
    Document   : Update_Distance
    Created on : 24 Apr, 2023, 9:03:03 PM
    Author     : Snehal
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update_Distance</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
             background-color:white;
             /* margin-top:5px;  */
              margin-left: 200px;
              height: 100%;
              max-width: 100%;
              padding-top: 10px;
            box-shadow:0 20px 20px  black;
           
            
            
}
   a:hover {
                background-color: #03fc07;
            }
         body {
 background-image: url("img/Map.jpg"); /* The image used */
 background-color: #ffffff; /* Used if the image is unavailable */
  background-repeat: no-repeat; /* Do not repeat the image */
  background-size: 700px 900px;/* Resize the background image to cover the entire container */
  margin-top: 30px;

}

input[type=text],[type=file]
{
    border: solid;
}
            
        </style>
    </head>
    <body>
         <%@include file="Header_Admin.jsp"%>
        <form action="Admin_Add_Distance" method="POST">
            
        <script src="validation.js"></script>
        
        <div class="container-fluid" >
        <div class="row">
            <div class="col-sm-6"></div>
             <div class="col-sm-6">
                 
                 <div class="container">
                     <div class="row">
                          <div class="col-sm-3">
                              <img src="img/Add_Cab_1.jpg"height="100" width="200">
                          
                              </div>
                          <div class="col-sm-9">
                     <center><h1><b>Add Distance</b></h1></center>
                       
                         </div>
                     </div>
                      <hr style="height:2px;border-width:0;color:white;background-color:black">
                    
                        
                     
                              <div class="row">
                         <div class="col-sm-12">
                             <label><b>id</b></label>
                             <input value="<%=request.getParameter("txt_id")%>" onkeypress="javascript:return isNumber(event)" type="text" name="txt_id"  class="form-control">
                         </div>
                         </div>
                         <div class="row">
                           <div class="col-sm-6">
                             <label><b>Address To</b></label><span style="color:red">*</span>
                             <input  value="<%=request.getParameter("txt_picaddress")%>" required=""  style=" border:solid black;  " name="txt_picaddress" class="form-control" placeholder="Enter  Address To" rows="1" cols="10">
                         </div>
                             
                             <div class="col-sm-6">
                                 <label><b>Address From</b></label><span style="color:red">*</span>
                            <input value="<%=request.getParameter("txt_dropaddress")%>" required="" style=" border:solid black; " name="txt_dropaddress" class="form-control" placeholder="Enter Address From" rows="1" cols="10">
                             </div>
                         </div>
                               
                             
                     
                     <br>  
                     
                     
                     
                     <div class="row">
                      <div class="col-sm-12">
                         <label><b>Distance</b></label><span style="color:red">*</span>
                       
                        <div class="input-group">
                          <input id="distance" type="number"value="<%=request.getParameter("txt_dis")%>" required="" onkeypress="javascript:return isNumbet(event)" style=" border:solid black;" onkeyup="cal()" placeholder="Enter distance" name="txt_dis" class="form-control">
                           <div class="input-group-append">
                            <span class="input-group-text">km</span>
                             
                                        </div>
                                           </div>
                         </div>
<!--                         <div class="col-sm-6">
                             <label><b>Rate</b></label><span style="color:red">*</span>
                             <input  required="" value="<%=request.getParameter("txt_rate")%>" required="" style=" border:solid black;" placeholder="Enter rate in meter" name="txt_rate" class="form-control">
                             
                             
                         </div>-->
                     </div>
                     <br>
                     
                     
                     
                    
                             
                     <br>
                  <div class="row">
                      <div class="col-sm-2"></div>
                        
                      <br>
                      <br>
                      <div class="col-sm-4">
                             <input style=" border:solid black;" type="submit" name="btn_save" class="btn btn-success form-control" value="Update">
                         </div>
                      <br>
                      <br>
                      <div class="col-sm-4">
                             <input  style=" border:solid black;" type="submit" name="btn_save" class="btn btn-success form-control" value="Delete">
                         </div>
                      <br>
                      <br>
                     <div class="col-sm-2"></div>
                     </div>
                 </div>
                 
                   </div>
                 
             </div>
              <div class="col-sm-2"></div>
        </div>
            </form>
    </body>
</html>



