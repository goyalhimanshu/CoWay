


<%@page import="com.coway.DBInfo"%>
<%-- <%@page import="sun.security.pkcs11.Secmod.DbMode"%>--%>  
<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
 
<%
            response.setContentType("text/xml");
            String sn=request.getParameter("ok");
           // int i=Integer.parseInt(sn);
 
                    System.out.println("Helo");
                    Connection con =DBInfo.getConnection();
                    String select="select distinct city_name from cities where city_state=?";
                    PreparedStatement ps=con.prepareStatement(select);
                    ps.setString(1, sn);
                    ResultSet rs=ps.executeQuery();
 					System.out.println("Hello");
                    out.println("<emp>");
                    while(rs.next())
                    {                        
                    	System.out.println(rs.getString("city_name"));    
                        out.println("<empname>"+rs.getString("city_name")+"</empname>");
 
                    }
                    out.println("</emp>");
 
rs.close();
ps.close();
con.close();
 
%>
