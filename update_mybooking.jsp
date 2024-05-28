<%-- 
    Document   : update_mybooking
    Created on : 30 Mar, 2023, 11:10:15 AM
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
        <title>my booking</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
              background-color: white;
             margin-top: 20px;
             margin-bottom: 20px;
            
             padding-top: 10px;
             padding-bottom: 10px;
            /*border: 10px solid black;*/
            opacity: 0.8;
             box-shadow: 0 15px 20px  black;
          }
           a:hover {
                background-color: #03fc07;
            }
          
          body{
  /*background-image: url("");*/
  
  background-repeat: no-repeat;
  background-color:  #D1F2EB;
  background-size: 700px 700px;
  background-position: center;
/* background-attachment: fixed;*/
 
          }
input[type=text],[type=file],[type=date],[type=time]
{
    border: solid;
}
        </style>
    </head>
    <body>
         <%@include file="Header_Driver.jsp"%>
       <form action="My_Booking" method="POST">
           
       <script src="validation.js"></script> 
       <script type="text/javascript">
     window.onload=function(){
     var today = new Date().toISOString().split('T')[0];
     document.getElementsByName("txt_date")[0].setAttribute('min', today);
     document.getElementsByName("txt_date")[0].setAttribute('max', today);
    }
    window.onload=function(){
     var today = new Date().toISOString().split('T')[0];
     document.getElementsByName("txt_ddate")[0].setAttribute('min', today);
     
    }
    window.onload=function(){
     var today = new Date().toISOString().split('T')[0];
     document.getElementsByName("txt_pdate")[0].setAttribute('min', today);
     
    }
    

      </script> 
      <script>
          function cal()
          {
              var a=document.getElementById("distance").value;
              var b=document.getElementById("price").value;
              document.getElementById("totalamount").value=a*b;
          }
      </script>
        <div class="container-fluid" >
        <div class="row">
            <div class="col-sm-3"></div>
             <div class="col-sm-6">
                 
                 <div class="container">
                       <div class="row">
                           <div class="col-sm-7">
                               <br>
                     <center><h1><b>My Booking</b></h1></center>
                          </div>
                          <div class="col-sm-5">
                              <img src="img/iconbooking.jpg" height="100" width="200">
                          </div>
                     
                         
                         <br>
                         
                          
                       </div>
                             
                     <hr style="height:3px;border-width:0;color:white;background-color:black">
                     
                     
                     
                     <div class="row">
                         <div class="col-sm-4">
                             <label><b>Booking id</b></label>
                             <input readonly=""value="<%=request.getParameter("txt_id")%>"style=" border:solid black" onkeypress="javascript:return isNumbet(event)" type="text" name="txt_id" placeholder="Booking id" class="form-control">
                         </div>
                    
                     <div class="col-sm-4">
                             <label><b>Name</b></label><span style="color:red">*</span>
                            <input readonly="" required="" value="<%=request.getParameter("txt_name")%>"required="" onkeypress="javascript:return isString(event)" type="text" name="txt_name" placeholder="Enter name" class="form-control">
                         </div>
                         <div class="col-sm-4">
                             <label><b>Contact Number</b></label><span style="color:red">*</span>
                             <input readonly="" required="" value="<%=request.getParameter("contact")%>"style=" border:solid black;"  onkeypress="javascript:return isContactno(event)" type="text" name="contact" placeholder="Contact number" class="form-control">
                         </div>
                         </div>
                 
                     <br> 
                    
                     
                         <div class="row">
                           <div class="col-sm-6">
                             <label><b>Pic Address</b></label><span style="color:red">*</span>
                             <textarea readonly=""  required="" style=" border:solid black;  " name="txt_picaddress" class="form-control" placeholder="Enter Pic Address" rows="1" cols="10"><%=request.getParameter("txt_picaddress")%></textarea>
                         </div>
                             
                             <div class="col-sm-6">
                                 <label><b>Drop Address</b></label><span style="color:red">*</span>
                            <textarea  readonly="" required="" style=" border:solid black; " name="txt_dropaddress" class="form-control" placeholder="Enter drop Address" rows="1" cols="10"><%=request.getParameter("txt_dropaddress")%></textarea>
                             </div>
                         </div>
                         <br>
                         

                              
                     <div class="row">
                          <div class="col-sm-6">
                              <label><b>Pic Time</b></label><span style="color:red">*</span>
                            <input readonly="" required="" value="<%=request.getParameter("txt_ptime")%>"style=" border:solid black;"  type="time"  name="txt_ptime"  class="form-control">
                          </div>
                          <div class="col-sm-6">
                              <label><b>Drop Time</b></label><span style="color:red">*</span>
                            <input readonly="" required="" value="<%=request.getParameter("txt_dtime")%>"style=" border:solid black;"  type="time"  name="txt_dtime"  class="form-control">
                         </div>
                         
                     </div>
<br>
                              
                           <div class="row">    
                          <div class="col-sm-4">
                             <label><b>Book date</b></label><span style="color:red">*</span>
                            <input readonly="" required="" value="<%=request.getParameter("txt_date")%>"style=" border:solid black;"  type="date"  name="txt_date" id="txt_date"  class="form-control">
                         </div>
                                <div class="col-sm-4">
                             <label><b>Pic date</b></label><span style="color:red">*</span>
                            <input readonly="" required="" value="<%=request.getParameter("txt_pdate")%>"style=" border:solid black;"  type="date" name="txt_pdate" id="txt_pdate"   class="form-control">
                         </div>
                                <div class="col-sm-4">
                             <label><b>Drop date</b></label><span style="color:red">*</span>
                            <input readonly="" required="" value="<%=request.getParameter("txt_ddate")%>"style=" border:solid black;"  type="date"name="txt_ddate" id="txt_ddate"class="form-control">
                            </div> 
                            
                            
                     </div>
                     <br>
                     
                     
                    
                   
                     
                 <br>
                 <div class="row">
                     <div class="col-sm-4">
                         <label><b>Distance</b></label><span style="color:red">*</span>
                       
                        <div class="input-group">
                          <input readonly="" value="<%=request.getParameter("txt_dis")%>"id="distance" type="number" required="" onkeypress="javascript:return isNumbet(event)" style=" border:solid black;" onkeyup="cal()" placeholder="Enter distance" name="txt_dis" class="form-control">
                           <div class="input-group-append">
                            <span class="input-group-text"> km </span>
                             
                                        </div>
                                           </div>
                         </div>
                         <div class="col-sm-4">
                             <label><b>Rate</b></label><span style="color:red">*</span>
                             <input readonly="" value="<%=request.getParameter("txt_rate")%>"id="price"  onkeypress="javascript:return isNumber(event)" required="" style=" border:solid black;" placeholder="Enter rate meter" onkeyup="cal()" name="txt_rate" class="form-control">
                         </div>
                     <div class="col-sm-4">
                             <label><b>Total Amount</b></label><span style="color:red">*</span>
                             <input readonly="" value="<%=request.getParameter("txt_amount")%>"id="totalamount" onkeypress="javascript:return isNumber(event)"  style=" border:solid black;" placeholder="Amount" name="txt_amount" onkeyup="cal()" class="form-control">
                         </div>
                     </div>
                          <div class="row">
                         <div class="col-sm-12">
                               <label><b>Cab status</b></label>
                             <select  required="" style=" border:solid black;"required="" style=" border:solid black;" name="status" class="form-control">
                                 <option >select cab type</option>
                                 <option selected=""><%=request.getParameter("status")%></option>
<!--                                 <option>Booked</option>-->
                                 <option>Droped</option>
                             </select>
                         
                         </div>
                                 
                     </div> 
                 <br>
                 
                  <div class="row">
                      
                      <div class="col-sm-4"></div>
                         <div class="col-sm-4">
                             <input style=" border:solid black;"  type="submit" name="btn_save" class="btn btn-success form-control" value="Update">
                         </div>
                     <div class="col-sm-4">
<!--                             <input style=" border:solid black;"  type="submit" name="btn_save" class="btn btn-danger form-control" value="Delete">-->
                         </div>
                      <br>
                         <br>
                       
                      
                     </div>
                 </div>
                 
                 
            
              <div class="col-sm-3"></div>
        </div>
            </div>
       </form>
    </body>
</html>


