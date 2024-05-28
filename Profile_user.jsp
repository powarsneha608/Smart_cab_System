<%-- 
    Document   : Profile_user
    Created on : 27 Apr, 2023, 10:23:18 PM
    Author     : Snehal
--%>

<%-- 
    Document   : Profile
    Created on : 26 Apr, 2023, 7:27:25 PM
    Author     : Snehal
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile User</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <link rel="stylesheet" href="bootstrap.min.css">
</head>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Montserrat&display=swap');
    body{
        margin: 0;
        padding: 0;
        font-family: 'Poppins', sans-serif;
        background-color: #ddd;
        align-items: center;
        justify-content: center;
    }

    *{
        box-sizing: border-box;
    }

    .container{
        display: flex;
        width: 100%;
        height: 100%;
        padding: 20px 20px;
    }

    .box{
        flex: 30%;
        display: table;
        align-items: center;
        text-align: center;
        font-size: 20px;
        background-color: #0d1425;
        color: #fff;
        padding: 30px 30px;
        border-radius: 20px;
          box-shadow:0 20px 20px  white;
    }

    .box img{
        border-radius: 50%;
        border: 2px solid #fff;
        height: 250px;
        width: 250px;
    }

    .box ul{
        margin-top: 30px;
        font-size: 30px;
        text-align: center;
    }
    .box ul li{
        list-style: none;
        margin-top: 50px;
        font-weight: 100;
    }

    .box ul li i{
        cursor: pointer;
        margin: 10px;
        font-size: 40px;
    }

    .box ul li i:hover{
        opacity: 0.6;
    }

    .About{
        margin-left: 20px;
        flex: 50%;
        display: table;
        padding: 30px 30px;
        font-size: 20px;
        background-color: #fff;
        border-radius: 20px;
        box-shadow:0 20px 20px  black;
    }

    .About h1{
        text-transform: uppercase;
        letter-spacing: 3px;
        font-size: 50px;
        font-weight: 500;
    }

    .About ul li{
        list-style: none;
    }

    .About ul{
        margin-top: 20px;
    }

    @media screen and (max-width: 1068px) {
        .container{
            display: table;
        }

        .box{
            width: 100%;
        }

        .About{
            width: 100%;
            margin: 0;
            margin-top: 20px;
        }

        .About h1{
            text-align: center;
        }
    }
</style>
<body>
             <%@include file="Header_User.jsp"%>

      <%
   Connection cn=null;
  Statement st=null;
  int counter=1; 
   String sql="";
   
           String name=request.getParameter("txt_name");
           String Search=request.getParameter("btn_save");
           
            if(Search!=null)
           {
           sql="select * from user_registration where fullname ='"+name+"' ";
           }
           else
           {
           sql="select * from  user_registration where us_id='"+session.getAttribute("us_id") +"'";
           }
       try
       {
           Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
           %>
           <form action="Update_User_Registration.jsp" method="POST">
    <div class="container">
        <div class="box">
            <ul>
              <img src="<%=rs.getString("user_image")%>">
         <input  type="hidden" name="file_image" placeholder="image"  value="<%=rs.getString("user_image")%>" class="form-control">
       
        
           
            
                <li><%=rs.getString("us_id")%></li>
            <input  value="<%=rs.getString("us_id")%>"onkeypress="javascript:return isNumber(event)" type="hidden" name="txt_id" placeholder=" Compliant id"  class="form-control">

                <%=rs.getString("fullname")%>
                         <input value="<%=rs.getString("fullname")%>" onkeypress="javascript:return isString(event)" type="hidden" name="txt_fname" placeholder="Enter Name" class="form-control">

<!--                <li><%=rs.getString("contact")%></li>
                         <input value="<%=rs.getString("contact")%>"type="hidden" name="txt_no" placeholder="Enter contact"  class="form-control">

                 <li><%=rs.getString("email")%></li>
                           <input value="<%=rs.getString("email")%>"onkeypress="javascript:return isNumber(event)"maxlength="10" type="hidden" name="txt_email" placeholder="Enter Email id" class="form-control">-->

<!--                <li><i style="font-size:24px" class="fa"></i>
                    <i style="font-size:24px" class="fa"></i>
                    <i style="font-size:24px" class="fa"></i></li>-->
            </ul>
                  
       
        </div>
        <div class="About">
            <ul>
                <h1><b>about</b></h1>
            </ul>

             <ul>
                <h5><b>Contact:</b></h5>
                <li><%=rs.getString("contact")%></li>
         <input  required=""  value="<%=rs.getString("contact")%>" style="border:solid black;" type="hidden" id="txt_no" name="contact"  onkeypress="Javascript:return isContactno(event)" maxlength="10"  placeholder="Enter Contact" class="form-control">

            </ul>
         <ul>
             <h5><b>Email:</b></h5>
              <li><%=rs.getString("email")%></li>
                           <input value="<%=rs.getString("email")%>"onkeypress="javascript:return isNumber(event)"maxlength="10" type="hidden" name="txt_email" placeholder="Enter Email id" class="form-control">

         </ul>
         <ul>
             <h5><b>Date of Birth:</b></h5>
                <li><%=rs.getString("Date_of_birth")%></li>
         <input  required=""  value="<%=rs.getString("Date_of_birth")%>" style="border:solid black;" type="hidden" id="txt_no" name="txt_date"  onkeypress="Javascript:return isContactno(event)" maxlength="10"  placeholder="Enter Contact" class="form-control">

            </ul>
            <ul>
                <h5><b>Address:</b></h5>
                <li><%=rs.getString("addresss")%></li>
         <input  required=""  value="<%=rs.getString("addresss")%>" style="border:solid black;" type="hidden" id="txt_no" name="address"  onkeypress="Javascript:return isContactno(event)" maxlength="10"  placeholder="Enter Contact" class="form-control">

            </ul>
            <ul>
               
             
             <div  class="navbar">
                <div class="row">
                    <div class="col-sm-2"></div>
                 <center><a href="Update_User_Registration.jsp"><input  type="submit" id="btn_save"  name="btn_save" class=" form-control btn btn-success " value="Update"></a></center>
                </div>
            </div>
             </form>
             
        </div>
    </div>
               <%
           }
       }catch(Exception ex)
       {
           out.println(ex.toString());
       }
     

%>
           
</body>
</html>

