<%-- 
    Document   : update_Add_cab
    Created on : 21 Mar, 2023, 9:39:36 PM
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
        <title>update_Add cab</title>
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
         <%@include file="Header_Driver.jsp"%>
        <form action="Add_cab" method="POST">
            
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
                     <center><h1><b>Add Cab</b></h1></center>
                       
                         </div>
                     </div>
                      <hr style="height:2px;border-width:0;color:white;background-color:black">
                    
                        
                     
                              <div class="row">
                         <div class="col-sm-4">
                             <label><b>Cab id</b></label>
                             <input value="<%=request.getParameter("txt_id")%>" onkeypress="javascript:return isNumber(event)" type="text" name="txt_id" placeholder=" Brand id"  class="form-control">
                         </div>
                         <div class="col-sm-4">
                             <label><b>Driver Name</b></label><span style="color:red">*</span>
                             <input  required="" value="<%=request.getParameter("txt_cname")%>" required="" onkeypress="javascript:return isString(event)" type="text" name="txt_cname" placeholder="Add Brand Name" class="form-control">
                         </div>
                         <div class="col-sm-4">
                             <label><b>Cab no</b></label><span style="color:red">*</span>
                             <input  required="" value="<%=request.getParameter("txt_no")%>" required="" type="text" name="txt_no" placeholder="Enter cab no"  class="form-control">
                         </div>
                               
                             
                     </div>
                     <br>  
                     
                      <div class="row">
                     <div class="col-sm-4">
                               <label><b>Cab type</b></label><span style="color:red">*</span>
                                <select  required="" style=" border:solid black;"required="" style=" border:solid black;" name="txt_cabtype" class="form-control">
                                 <option selected >select cab type</option>
                                 <option selected=""><%=request.getParameter("txt_cabtype")%></option>
                                 <option>Cab</option>
                                 <option>auto</option>
                             </select>
                         </div>
                          <div class="col-sm-4">
                               <label><b>Brand name</b></label><span style="color:red">*</span>
                               <select  required="" style=" border:solid black;" name="txt_bname" class="form-control">
                                 <option selected>select brand name</option>
                                 <option selected=""><%=request.getParameter("txt_bname")%></option>
                                 <option>Honda city</option>
                                 <option>Maruti Suzuki wagon R</option>
                                 <option>Maruti Suzuki Dzire</option>
                                 <option>Amaze</option>
                                 <option>Honda-city</option>
                                 <option>Indigo</option>
                                 <option>Bajaj Auto Rickshaw</option>
                                 <option>Mahindra Treo Auto Rickshaw</option>
                             </select>                                 
                         </div>
                          <div class="col-sm-4">
                               <label><b>Fuel Type</b></label><span style="color:red">*</span>
                                <select required="" style=" border:solid black;"name="txt_ftype" class="form-control">
                                 <option selected>select fuel name</option>
                                 <option selected=""><%=request.getParameter("txt_ftype")%></option>
                                 <option>CNG</option>
                                 <option>Diesel</option>
                                 <option>Petrol</option>
                                  <option>Electric</option>
                             </select>                                
                      </div>
                      </div>
                     <br>
                     
                     
                     <br>
                     
                     <div class="row">
                     
                         <div class="col-sm-6">
                             <label><b>Cab Model</b></label><span style="color:red">*</span>
                             <input value="<%=request.getParameter("txt_model")%>" required="" type="text" name="txt_model" placeholder="Cab Model"  class="form-control">
                         </div>
                         <div class="col-sm-6">
                             <label><b>Rate</b></label><span style="color:red">*</span>
                             <input readonly=""type="text" required="" value="<%=request.getParameter("txt_rate")%>" required="" style=" border:solid black;" placeholder="Enter rate in meter" name="txt_rate" class="form-control">
                             
                             
                         </div>
                     </div>
                     <br>
                     
                     <div class="row">
                       
                         <div class="col-sm-6">
                             <label><b>Chassis no</b></label><span style="color:red">*</span>
                             <input  required="" value="<%=request.getParameter("txt_chno")%>" required="" type="text" name="txt_chno" placeholder=" Enter Chess number"  class="form-control">
                          </div>
                         <div class="col-sm-6 ">
                             <label><b>Cab image</b></label><span style="color:red">*</span>
                             <input value="<%=request.getParameter("file_image")%>"  type="file" name="file_image" placeholder="image" class="form-control">
                         </div>
                     </div>
                     <br>
                     
                     <div class="row">
                         <div class="col-sm-6">
                                 <label><b>Description</b></label><span style="color:red">*</span>
                            <textarea  required="" style=" border:solid black;" name="discription" class="form-control" placeholder="write discription (in 50 words)" rows="1" cols="10"><%=request.getParameter("discription")%></textarea>
                             </div>
                               <div class="col-sm-6">
                                 
                               <label><b>Cab status</b></label><span style="color:red">*</span>
                             <select  required="" style=" border:solid black;"required="" style=" border:solid black;" name="status" class="form-control">
                                 <option>select cab type</option>
                                 <option selected=""><%=request.getParameter("status")%></option>
                                 <option>Active</option>
                                 <option>Deactive</option>
                             </select>
                         
                          
                     </div>
                     </div>
                             
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
                             <input  style=" border:solid black;" type="submit" name="btn_save" class="btn btn-danger form-control" value="Delete">
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


