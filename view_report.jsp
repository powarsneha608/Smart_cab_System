<%-- 
    Document   : view_report
    Created on : 17 May, 2023, 3:50:06 PM
    Author     : Snehal
--%>

<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view report Page</title>
    </head>
    <body>
              <%
            Connection conn = null;
            String event=request.getParameter("btn");
            String a=request.getParameter("txt_id");
           
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM", "root", "root");
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            
            if(event.equals("Booking Report"))
            {
            
            File reportFile = new File(application.getRealPath("Report\\rep_my_book.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
            
            
          
            
            if(event.equals("Payment Report"))
            {
            
            File reportFile = new File(application.getRealPath("Report\\rep_My_Payemnt.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
            
            
           
            
            if(event.equals("Brand Report"))
            {
            
            File reportFile = new File(application.getRealPath("Report\\rep_brand.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
            if(event.equals("Route Report"))
            {
            
            File reportFile = new File(application.getRealPath("Report\\rep_Route.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
            if(event.equals("Cab Report"))
            {
            
            File reportFile = new File(application.getRealPath("Report\\rep_cab_details.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
            
            //user report
            
            
            
        %>
    </body>
</html>
