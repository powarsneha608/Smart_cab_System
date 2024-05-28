<%-- 
    Document   : Phone_pay_Payment
    Created on : 16 Apr, 2023, 2:53:20 PM
    Author     : Snehal
--%>




<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Phone Pay</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
             background-color: white;
             margin-top: 80px;
             padding-top: 10px;
             padding-bottom: 50px;
           
            opacity: 0.8;
            box-shadow: 0 15px 20px  black;
            
          }
          
          
          a:hover {
                background-color: #03fc07;
            }
              body {
/* background-image: url("Payment.jpg"); /* The image used */
  background-color: white; /* Used if the image is unavailable */
  height: 500px; /* You must set a specified height */
  background-position: center; /* Center the image */
  background-repeat: no-repeat; /* Do not repeat the image */
  background-size: cover; /* Resize the background image to cover the entire container */

}
input[type=text],[type=file],[type=date]
{
    border: solid;
}
          
        </style>
    </head>
    <body>
         <%@include file="Header_User.jsp"%>
       <form action="Phone_pay_Pament" method="POST">
            <%           
            Connection cn=null;
            Statement st=null;
            String id="1";
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
           String sql="select * from Phone_pay_Payment";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("payment_id"))+1);
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
                     <center><h1><b>Online Payment</b></h1></center>
                          </div>
                          <div class="col-sm-5">
                              <img src="img/Google_Pay_PhonePe.jpg" height="100" width="200">
                          </div>
                     
                         <br>
                         <br>
                         
                          
                       </div>
                     
                     <hr style="height:2px;border-width:0;color:white;background-color:gray" >
                     <br>
                     <div class="row">
<!--                         <div class="col-sm-4">
                             <label><b>Payment id</b></label>
                             <input value="<%=id%>" type="text"  value="<%=id%>"name="txt_id" placeholder=" payment id" class="form-control">
                         </div>-->
                         <div class="col-sm-6">
                             <label><b>Name</b></label><span style="color:red">*</span>
                             <input  required="" style=" border:solid black;" onkeypress="javascript:return isString(event)" type="text" name="txt_cfname" placeholder="Enter  Name" class="form-control">
                         </div>
                  <div class="col-sm-6">
                             <label><b>Contact Number</b></label><span style="color:red">*</span>
                             <input  required=""  maxlength="10"style=" border:solid black;" onkeypress="javascript:return isNumber(event)" type="text" name="txt_cno" placeholder="Enter Phone no" class="form-control">
                         </div>
                     </div>
                     <br>         
                     
                          
                          <div class="row">
                          <div class="col-sm-6">
                             <label><b>Payment Date</b></label><span style="color:red">*</span>
                            <input   required="" style=" border:solid black;"type="date"  name="txt_date" id="txt_no" placeholder="dd/mm/yy" class="form-control">
                         </div>
                          <div class="col-sm-6">
                             <label><b>Total Amount</b></label><span style="color:red">*</span>
                            <input readonly="" style=" border:solid black;" type="text" value="<%=session.getAttribute("total_amount")%>"  name="txt_amount" id="txt_no" placeholder="Amount" class="form-control">
                          </div>
                     </div>
                 <br>
                 
                  <div class="row">
                         <div class="col-sm-6">
                             <input  type="submit" name="btn_save" class="btn btn-success form-control" value="Pay">
                         </div>
                     <div class="col-sm-4">
<!--                            <input style="border:solid black;" type="submit" name="btn_save" class="btn btn-danger form-control" value="Cancle">-->
                             <a href="Payment_Method.jsp"class="btn btn-danger btn-fill form-control">Cancel</a>
                         </div>
                     </div>
                 
                   </div>
                 
             </div>
              <div class="col-sm-3"></div>
        </div>
            </div>
       </form>
    </body>
</html>


