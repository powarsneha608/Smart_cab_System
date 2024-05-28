<%-- 
    Document   : view_Rule
    Created on : 18 Apr, 2023, 11:04:18 PM
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
        <title>view Rule</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        
        <style>
            .container{
               
                margin: 20px;
                padding: 20px;
                  background-color: #F2F3F4;
                box-shadow: -7px -7px 20px rgba(0, 0, 0, 0.2),
                              7px  7px 20px rgba(0, 0, 0, 0.2)
               
            }
            
        </style>
    </head>
    <body>
      
          <%@include file="Header_User.jsp"%>
             <script src="validation.js"></script>
        <div class="container-fluid" >
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <div class="row">
                          <div class="col-sm-2">
                              <img src="img/download.jpg"height="200" width="300">
                          
                              </div>
                          <div class="col-sm-7">
                              <br>
                              <br>
                              <br>
                              <center><h1 style="color:#CB4335; font-size:60px;">VIEW&ensp;RULES</h1></center>
                         </div>
                     </div> 
<!--            <center> <h1>VIEW NOTICE </h1></center>-->
                        

          
        <div class="container">
             <br>
            <br>
             
            <%
           Connection cn=null;
    Statement st=null;
    int counter=1;
 try
      {
       Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
           String sql="select * from user_rules";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
           
            {
            
            %>
                    
           
                <div class="col-sm-12">
                   
                   
                    <h3><b>#</b><%=rs.getString("rules_no")%></h3>
                    <h3 style="color:black"><b>Rules : </b><%=rs.getString("Rules")%></h3>                 
                    <h4 style="color:gray"><b>(</b><%=rs.getString("Description")%>)</h4>

                    
              
               
           </div>
           
              <%
              
              }
}catch(Exception ex)
{
System.out.println(ex.toString());
}
              %>
               
        </div>
              </div>
        </div>
              <br>
              <br>
              <div class="row">
                   
                   <div class="col-sm-5"></div>
                   <div class="col-sm-4">
                       <form action="view_Rule" method="POST">



<form onsubmit="return checkForm(this)">
    <p><input id="field_terms" required="" type="checkbox" required name="terms">
<label for="field_terms">I accept the <u>Terms and Conditions</u></label></p>

    <center><p><input type="submit" name="btn_save"  required="" value="Next"></p></center>

   </form>
 </form>

                      </div>
                
                    <div class="col-sm-4">
                        
                    </div>
                   
              </div>
               <div class="col-sm-1">
                   
               </div>
                
        </div>
     
                  <style>

  input[type="checkbox"]:required:invalid + label {
    color: red;
  }
  input[type="checkbox"]:required:valid + label {
    color: green;
  }

</style>
                  <script>

  var checkForm = function(form) {
   
    if(!form.terms.checked) {
      alert("Please indicate that you accept the Terms and Conditions");
      form.terms.focus();
      return false;
    }
    return true;
  };

</script>
    </body>
</html>




