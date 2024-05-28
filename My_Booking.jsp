

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
         <%@include file="Header_User.jsp"%>
       <form action="My_Booking" method="POST">
            <% 
                      
            Connection cn=null;
            Statement st=null;
            String dist="";
           
            
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
             
           String sql="select * from Admin_Add_Distance where add_to='"+session.getAttribute("add_to")+"' and add_from='"+session.getAttribute("add_from")+"'";
          
           
            ResultSet rs=st.executeQuery(sql);
            
         while(rs.next())
         {  
             
             dist=rs.getString("Distance");
            
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        }
            
%> 

  <%           
           
            String id="1";
            
            
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
           String sql="select * from My_Booking";
            ResultSet rs=st.executeQuery(sql);
          
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("Booking_id"))+1);
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        }
            
%>

       <script src="validation.js"></script> 
       <script type="text/javascript">
     window.onload=function(){
     var today = new Date().toISOString().split('T')[0];
     document.getElementsByName("txt_date")[0].setAttribute('min', today);
     document.getElementsByName("txt_date")[0].setAttribute('max', today);
     document.getElementsByName("txt_pdate")[0].setAttribute('min', today);     
     
     document.getElementsByName("txt_ddate")[0].setAttribute('min', today);
     
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
                     <center><h1><b> Booking</b></h1></center>
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
                             <input style=" border:solid black"value="<%=id%>" onkeypress="javascript:return isNumbet(event)" type="text" name="txt_id" placeholder="Booking id" class="form-control">
                         </div>
                    
                     <div class="col-sm-4">
                             <label><b>Name</b></label><span style="color:red">*</span>
                             <input required="" onkeypress="javascript:return isString(event)" type="text" value="<%=session.getAttribute("fullname")%>" name="txt_name" placeholder="Enter name" class="form-control">
                         </div>
                         <div class="col-sm-4">
                             <label><b>Contact Number</b></label><span style="color:red">*</span>
                             <input  required="" style=" border:solid black;" value="<%=session.getAttribute("contact")%>" onkeypress="javascript:return isContactno(event)" maxlength="10" type="text" name="contact" placeholder="Contact number" class="form-control">
                         </div>
                         </div>
                 
                     <br> 
                    
                     
                         <div class="row">
                           <div class="col-sm-6">
                             <label><b>Pic Address</b></label><span style="color:red">*</span>
                             <textarea type="text" required=""  style=" border:solid black;  " name="txt_picaddress" class="form-control" placeholder="Enter Pic Address" rows="1" cols="10"><%=session.getAttribute("add_to")%></textarea>
                         </div>
                             
                             <div class="col-sm-6">
                                 <label><b>Drop Address</b></label><span style="color:red">*</span>
                            <textarea type="text"  required=""style=" border:solid black; " name="txt_dropaddress" class="form-control" placeholder="Enter drop Address" rows="1" cols="10"><%=session.getAttribute("add_from")%></textarea>
                             </div>
                         </div>
                         <br>
                         

                              
                     <div class="row">
                          <div class="col-sm-6">
                              <label><b>Pic Time</b></label><span style="color:red">*</span>
                            <input  required="" style=" border:solid black;"  type="time"  name="txt_ptime"  class="form-control">
                          </div>
                          <div class="col-sm-6">
                              <label><b>Drop Time</b></label><span style="color:red">*</span>
                            <input  required="" style=" border:solid black;"  type="time"  name="txt_dtime"  class="form-control">
                         </div>
                         
                     </div>
                <br>
                              
                           <div class="row">    
                          <div class="col-sm-4">
                             <label><b>Book date</b></label><span style="color:red">*</span>
                            <input  required="" style=" border:solid black;"  type="date"  name="txt_date" id="txt_date"  class="form-control">
                         </div>
                                <div class="col-sm-4">
                             <label><b>Pic date</b></label><span style="color:red">*</span>
                            <input  required="" style=" border:solid black;"  type="date" name="txt_pdate" id="txt_pdate"   class="form-control">
                         </div>
                                <div class="col-sm-4">
                             <label><b>Drop date</b></label><span style="color:red">*</span>
                            <input  required="" style=" border:solid black;"  type="date"name="txt_ddate" id="txt_ddate"class="form-control">
                            </div>      
                     </div>
                     <br>
                     
                     
                    
                   
                     
                 <br>
                 <div class="row">
                     <div class="col-sm-4">
                         <label><b>Distance</b></label><span style="color:red">*</span>
                       
                        <div class="input-group">
                            <input id="distance" type="number" readonly=""  onkeypress="javascript:return isNumbet(event)" value="<%=dist%>"  style=" border:solid black;" onkeyup="cal()" placeholder="Enter distance" name="txt_dis" class="form-control">
                           <div class="input-group-append">
                            <span class="input-group-text">km</span>
                             
                                        </div>
                                           </div>
                         </div>
                         <div class="col-sm-4">
                             <label><b>Rate</b></label><span style="color:red">*</span>
                             <input id="price" readonly="" value="<%=session.getAttribute("Km_rate")%>"  onkeypress="javascript:return isNumber(event)" required="" style=" border:solid black;" placeholder="Enter rate km" onkeyup="cal()" name="txt_rate" class="form-control">
                         </div>
                     <div class="col-sm-4">
                             <label><b>Total Amount</b></label><span style="color:red">*</span>
                             <input id="totalamount" onkeypress="javascript:return isNumber(event)"  style=" border:solid black;" placeholder="Amount" name="txt_amount" onkeyup="cal()" class="form-control">
                         </div>
                     </div>
                 <br>
                  <div class="row">
                         
                         <div class="col-sm-6">
                           
                             <input style=" border:solid black;" value="<%=session.getAttribute("driver_name")%>"  required="" onkeypress="javascript:return isString(event)" type="hidden" name="txt_cname" placeholder="Enter Name" class="form-control">
                         </div>
                         <div class="col-sm-6">
                             
                             <input style=" border:solid black;"required="" value="<%=session.getAttribute("cab_no")%>"type="hidden" name="txt_no" placeholder="Enter cab no"  class="form-control">
                         </div>
                               
                             
                     </div>
                     <br>  
                     
                      <div class="row">
                    
                               <div class="col-sm-6">
                              
                               <input type="hidden"  name="txt_bname" required=""  value="<%=session.getAttribute("brand_name")%>" class="form-control">

                         </div>
                               
                      </div>
                 
                  <div class="row">
                      <div class="col-sm-3"></div>
                     
                         <div class="col-sm-6">
                             <input style=" border:solid black;"  type="submit" name="btn_save" class="btn btn-success form-control" value="Book">
                         </div>
                      <br>
                         <br>
                       <div class="col-sm-3"></div>
                      
                     </div>
                 </div>
                 
                 
            
              <div class="col-sm-3"></div>
        </div>
            </div>
       </form>
    </body>
</html>

