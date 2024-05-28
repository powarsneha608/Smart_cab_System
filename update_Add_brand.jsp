<%-- 
    Document   : uodate_Add_brand
    Created on : 21 Mar, 2023, 2:45:35 PM
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
        <title>update Add brand</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
            background-color: gainsboro;
             padding-bottom: 50px;
            box-shadow: 0 15px 20px black;
       margin-left: 350px;  
            
}
            
          
         a:hover {
                background-color: #03fc07;
            }

         body {
 background-image: url("img/sample.jpg"); /* The image used */
 background-color: white;
  background-repeat: no-repeat; /* Do not repeat the image */
  background-size: 1200px 800px; /* Resize the background image to cover the entire container */
  
  

}

input[type=text],[type=file]
{
    border: solid;
}


       
          
          
            
        </style>
    </head>
    <body>
         <%@include file="Header_Admin.jsp"%>
        <form action="addbrand" method="POST">
            
         <script src="validation.js"></script>
         
        <div class="container-fluid" >
        <div class="row">
            <div class="col-sm-6"></div>
             <div class="col-sm-6">
                 
                 <div class="container">
                     <div class="row">
                          <div class="col-sm-4">
                              <br>
                              <img src="img/brndicon.jpg"height="150" width="300">
                          
                              </div>
                          <div class="col-sm-8">
                              <br>
                              <br>
                              
                              <center><h1 style="color:green"><b>Add  Brand</b></h1></center>
                       
                         </div>
                           
                     </div>
                      <hr style="height:2px;border-width:0;color:white;background-color:black">
                    
                     <br>
                      
                          
                     <div class="row">
                         <div class="col-sm-12">
                             <label><b>Brand id</b></label>
                             <input  value="<%=request.getParameter("txt_id")%>" onkeypress="javascript:return isNumber(event)"  type="number" name="txt_id" placeholder="Brand id"  class="form-control">
                         </div>
                         <div class="col-sm-12 ">
                             <label><b>Brand Name</b></label><span style="color:red">*</span>
                             <input  required=""  value="<%=request.getParameter("txt_bname")%>" required="" onkeypress="javascript:return isString(event)" type="text" name="txt_bname" placeholder="Add Brand Name" class="form-control">
                         </div>
                         
                           <div class="col-sm-12">
                                <label><b>Cab type</b></label><span style="color:red">*</span>
                                <input  required="" type="text" style=" border:solid black;"  value="<%=request.getParameter("txt_cabtype")%>" name="txt_cabtype" class="form-control">
<!--                                <select style=" border:solid black;"required="" style=" border:solid black;" name="txt_cabtype" class="form-control">
                                 <option selected >select cab type</option>
                                 <option ><%=request.getParameter("txt_cabtype")%></option>
                                 <option>Cab</option>
                                 <option>auto</option>
                             </select>-->
                         </div>
                          <div class="col-sm-12 ">
                             <label><b>Brand image</b></label><span style="color:red">*</span>
                             <input   required="" value="<%=request.getParameter("file_image")%>" type="file" name="file_image"  placeholder="image" class="form-control">
                         </div>
                     </div>
                     <br>         
                      
                  <div class="row">
                        
                       <div class="col-sm-6">
                             <input  style=" border:solid black" type="submit"  name="btn_save" class="btn btn-success form-control" value="Update">
                         </div>
                      <br>
                      <br>
                       <div class="col-sm-6">
                           <input  style=" border:solid black" type="submit"  name="btn_save" class="btn btn-success form-control" value="Delete">
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

