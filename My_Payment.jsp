<%-- 
    Document   : My_Payment
    Created on : 13 Feb, 2023, 9:33:30 PM
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
        <title>my payment credit</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
             background-color: white;
             margin-top: 40px;
             margin-bottom: 100px;
             padding-top: 10px;
             padding-bottom: 50px;
            border: 5px solid gray;
            opacity: 0.8;
            box-shadow: 0 15px 20px  black;
            
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
       <form action="My_Payment" method="POST">
            <%           
            Connection cn=null;
            Statement st=null;
            String id="1";
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
           String sql="select * from my_payment";
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
     var today = new Date().toISOString().split('T')[0];
     document.getElementsByName("txt_ex")[0].setAttribute('min', today);
     
    }
    function cal()
    {
        var a= document.getElementById("rate").value;
        var b=document.getElementById("Distance").value;
        document.getElementById("total_amount").value=a*b;
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
                              
                     <center><h1><b>Payment</b></h1></center>
                          </div>
                          <div class="col-sm-5">
                              <img src="img/Payment_1.jpg" height="100" width="200">
                          </div>
                     
                         <br>
                         <br>
                         
                          
                       </div>
                     
                     <hr style="height:2px;border-width:0;color:white;background-color:gray" >
                     <br>
                     <div class="row">
                         <div class="col-sm-6">
                            
                             <input value="<%=id%>" type="hidden"  name="txt_id" placeholder=" payment id" class="form-control">
                         </div>
                         <div class="col-sm-12">
                             <label><b>Card holder Name</b></label><span style="color:red">*</span>
                             <input  required="" style=" border:solid black;" onkeypress="javascript:return isString(event)" type="text" name="txt_cfname" placeholder="Enter card_holder Name" class="form-control">
                         </div>
                     </div>
                     <br>         
                      <div class="row">
                           <div class="col-sm-6">
                               <label><b>Payment Type</b></label><span style="color:red">*</span>
                             <select style=" border:solid black;"name="txt_payment type" class="form-control">
                                 <option selected >select Payment type</option>
                                 <option>Debit Card</option>
                                 <option>Credit Card </option>
                             </select>
                         </div>
                          <div class="col-sm-6">
                             <label><b>Card Number</b></label><span style="color:red">*</span>
                            <input style=" border:solid black;" maxlength="17" onkeypress="javascript:return isNumber(event)"type="text" name="txt_cno" id="txt_no" placeholder="Enter card number" class="form-control">
                         </div>
                     </div>
                     <br>
                      <div class="row">
                         <div class="col-sm-6">
                             <label><b>CVV</b></label><span style="color:red">*</span>
                             <input  required="" style=" border:solid black;" type="password" onkeypress="javascript:return isNumber(event)"  maxlength="3" name="txt_no"  id="txt_no" placeholder="Enter CVV" class="form-control">
                         </div>
                          <div class="col-sm-6">
                             <label><b>Card Expiry Date</b></label><span style="color:red">*</span>
                            <input  required="" style=" border:solid black;" type="date"  name="txt_ex"  id="txt_no" placeholder="dd/mm/yy" class="form-control">
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
                            <input readonly="" required="" style=" border:solid black;" type="text" value="<%=session.getAttribute("total_amount")%>"  name="txt_amount" id="txt_no" placeholder="Amount" class="form-control">
                          </div>
                     </div>
                 <br>
                 
                  <div class="row">
                         <div class="col-sm-6">
                             <input type="submit" name="btn_save" class="btn btn-success form-control" value="Pay">
                         </div>
                     <div class="col-sm-6">
<!--                            <input style="border:solid black;" type="submit" name="btn_save" class="btn btn-danger form-control" value="Cancle">-->
                             <a href="Payment_Method.jsp" class="btn btn-danger btn-fill form-control">Cancel</a>
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
