<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Hold Orders </title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>

<style type="text/css">
<!--
.style1 {color: #0066FF}
.style3 {font-family: "Times New Roman", Times, serif}
.style6 {color: #000000}
.style7 {font-size: 15px}
.style8 {color: #FFFFFF}
.style9 {font-family: "Times New Roman", Times, serif; font-size: 15px; }
.style10 {color: #FF0000}
.style11 {color: #0588c6}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="nav_menu">
        <ul>
          <li><a href="index.html">Home</a></li>
          <li><a href="a_login.jsp">Admin</a></li>
          <li class="active"><a href="b_login.jsp">Bank</a></li>
          <li><a href="u_login.jsp">User</a></li>
          <li><a href="s_login.jsp">Service Provider</a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="logo">
        <h1><a href="index.html">Representing Fine Grained Co-Occurrences for Behavior Based Fraud Detection in Online Payment Services</a></h1>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center" class="style1"> View All Hold Purchased Orders and Verify </h2>
		  <p>&nbsp;</p>
		  
		  
<table width="639" border="1.5" cellpadding="0" cellspacing="0" align="left">
                    <tr bgcolor="#00FF33">
                      <td width="50" height="44" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8">Id  </div></td>
                      <td width="82" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8">User  </div></td>
					  <td width="115" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8">Product Name  </div></td>
                      <td width="105" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8">Requested Date </div></td>
					  <td width="98" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8">Response  Date </div></td>
                      <td width="97" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8">Response Status</div></td>
		  </tr>

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7,s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;

 try 
	{		
      	   
		   String str="Rejected";
		   String query="select * from Bank_req_res where upd_per='"+str+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);//user
		s3=rs.getString(3);//pn
		s4=rs.getString(4);//permission
		s5=rs.getString(5);//req_dt
		s6=rs.getString(6);//res_dt
		
		
		
		
		%>
                    
                    <tr>
                      <td height="64"><div align="center" class="style9 style6"><%=j%></div></td>
                      <td><div align="center" class="style9 style6"><%=s2%></div></td>
                      <td><div align="center" class="style9 style6"><%=s3%></div></td>
					  <td><div align="center" class="style9 style6"><%=s5%></div></td>
					  <td><div align="center" class="style9 style6"><%=s6%></div></td>
                      <%	
			if(s4.equalsIgnoreCase("Rejected"))
			{
			
		%>
                      <td><div class="style9 style6">
                          <div align="center"><span class="style10">On Hold</span><a href="b_hold_pur_orders1.jsp?usid=<%=i%>&user=<%=s2%>&pname=<%=s3%>" class="style6"><br />
                            <span class="style11">(Check Again)</span></a></div>
                      </div></td>
                      <%
		
			}
			
			else
			{
		%>
                      <td width="62"><div class="style9 style6">
                          <div align="center"><%=s4%></div>
                      </div></td>
                    </tr>
                    <%
			  }
	  j=j+1;}
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </table>		  
		  
		  
		  
		  
		  
		  
		  
             <p>&nbsp;</p>
             <p>&nbsp;</p>
             <p>&nbsp;</p>
             <p align="right"><a href="b_main.jsp">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Bank Menu</h2>
          <ul class="sb_menu">
            <li><a href="b_main.jsp">Bank Main </a></li>
			<li><a href="b_login.jsp">Log Out</a></li>
          </ul>
        </div>
       
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2>Image Gallery</h2>
       <a href="#"><img src="images/pix1.jpg" width="56" height="56" alt="" class="ad" /></a> <a href="#"><img src="images/pix2.jpg" width="56" height="56" alt="" class="ad" /></a>       <a href="#"><img src="images/pix3.jpg" width="56" height="56" alt="" class="ad" /></a> <a href="#"><img src="images/pix4.jpg" width="56" height="56" alt="" class="ad" /></a>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  
</html>
