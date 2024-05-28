<%-- 
    Document   : Admin_Add_Distance
    Created on : 24 Apr, 2023, 7:03:30 PM
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
        <title>Distance</title>
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
         <%@include file="Header_Admin.jsp"%>
       <form action="Admin_Add_Distance" method="POST">
            <%           
            Connection cn=null;
            Statement st=null;
            String id="1";
            
            
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
           String sql="select * from Admin_Add_Distance ";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("id"))+1);
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        }
            
%>
       <script src="validation.js"></script> 
        <div class="container-fluid" >
        <div class="row">
            <div class="col-sm-3"></div>
             <div class="col-sm-6">
                 
                 <div class="container">
                       <div class="row">
                           <div class="col-sm-6">
                               <br>
                     <center><h1><b>Add Route</b></h1></center>
                          </div>
                          <div class="col-sm-6">
                              <img src="img/Add_route.jpg" height="100" width="300">
                          </div>
                     
                         
                         <br>
                         
                          
                       </div>
                             
                     <hr style="height:3px;border-width:0;color:white;background-color:black">
                     
                     
                     
                     <div class="row">
                         <div class="col-sm-12">
                             <label><b>id</b></label>
                             <input value="<%=id%>" style=" border:solid black" onkeypress="javascript:return isNumbet(event)" type="text" name="txt_id" placeholder="Booking id" class="form-control">
                         </div>
                    
                     </div>
                         <div class="row">
                           <div class="col-sm-6">
                             <label><b>Address To</b></label><span style="color:red">*</span>
                             <textarea  required=""  style=" border:solid black;  " name="txt_picaddress" class="form-control" placeholder="Enter  Address To" rows="1" cols="10"></textarea>
                         </div>
                             
                             <div class="col-sm-6">
                                 <label><b>Address From</b></label><span style="color:red">*</span>
                            <textarea  required="" style=" border:solid black; " name="txt_dropaddress" class="form-control" placeholder="Enter Address From" rows="1" cols="10"></textarea>
                             </div>
                         </div>
                         
                     
                 <br>
                 <div class="row">
                     <div class="col-sm-12">
                         <label><b>Distance</b></label><span style="color:red">*</span>
                       
                        <div class="input-group">
                          <input id="distance" type="number" required="" onkeypress="javascript:return isNumbet(event)" style=" border:solid black;" onkeyup="cal()" placeholder="Enter distance" name="txt_dis" class="form-control">
                           <div class="input-group-append">
                            <span class="input-group-text">km</span>
                             
                                        </div>
                                           </div>
                         </div>
<!--                         <div class="col-sm-6">
                             <label><b>Rate</b></label><span style="color:red">*</span>
                             <input id="price" onkeypress="javascript:return isNumber(event)" required="" style=" border:solid black;" placeholder="Enter rate km"  name="txt_rate" class="form-control">
                         </div>-->
                    
                     </div>
                         <br>
                         <br>
                 
                  <div class="row">
                      <div class="col-sm-3"></div>
                     
                         <div class="col-sm-6">
                             <input style=" border:solid black;"  type="submit" name="btn_save" class="btn btn-success form-control" value="Insert">
                         </div>
                      <br>
                         <br>
                       <div class="col-sm-3"></div>
                      
                     </div>
                 
                 
                 
            
              <div class="col-sm-3"></div>
        </div>
            </div>
       </form>
    </body>
</html>


