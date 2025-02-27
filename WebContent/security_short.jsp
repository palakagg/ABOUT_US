<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
    <%@page import="com.beans.Manages" %>
<%@page import="com.beans.Company" %>

    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Libra Application</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/style.css">
  <!-- endinject -->
</head>
<body>
HttpSession session2=request.getSession(false);
<div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row" > <!--change logo-->
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo" href="index.jsp"><img src="images/Libra-text-logo-white.png" alt="logo"/></a>
        <!-- <a class="navbar-brand brand-logo-mini" href="index.jsp"><img src="images/logo-mini.svg" alt="logo"/></a> -->
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-stretch">
        <!-- <div class="search-field d-none d-md-block">
          <form class="d-flex align-items-center h-100" action="index.jsp">
            <div class="input-group">
              <div class="input-group-prepend bg-transparent">
                  <i class="input-group-text border-0 mdi mdi-magnify"></i>                
              </div>
              <input type="text" class="form-control bg-transparent border-0" placeholder="Search">
            </div>
          </form>
        </div> -->
        <ul class="navbar-nav navbar-nav-right">

          <li class="nav-item d-none d-lg-block full-screen-link">
            <a class="nav-link">
              <i class="mdi mdi-fullscreen" id="fullscreen-button"></i>
            </a>
          </li>

          
          <li class="nav-item nav-logout d-none d-lg-block">
            <a class="nav-link" href="logout">
              <i class="mdi mdi-power"></i>
            </a>
          </li>

        </ul>
       <!-- <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="mdi mdi-menu"></span>
        </button>-->
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.html -->
     <nav class="sidebar sidebar-offcanvas" id="sidebar">
     <div id="nav">
        <ul id="nav" class="nav">
        
          <li class="nav-item nav-profile">
            <a href="#" class="nav-link">
              <div class="nav-profile-image">
                <img src="images/Employee.png" alt="profile">
                <span class="login-status online"></span> <!--change to offline or busy as needed-->              
              </div>
              <div class="nav-profile-text d-flex flex-column">
                <span class="font-weight-bold mb-2">Mr. Chirag Tank</span>
                <!-- <span class="text-secondary text-small">Training Assistant</span> -->
              </div>
              <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
            </a>
          </li>          <li class="nav-item"> 
            <a class="nav-link" href="check1">
              <span class="menu-title">Dashboard</span>
              <i class="mdi mdi-home menu-icon"></i>
            </a>
          </li>
<li class="nav-item">
	 <a class="nav-link" href="shortage">
              <span class="menu-title">Funds</span>
              <i class="mdi mdi-cash-usd menu-icon"></i>
            </a>
		
	</li>
	<li class="nav-item">
		<a class="nav-link" href="shortage1">
              <span class="menu-title">Securities</span>
              <i class="mdi mdi-file-document menu-icon"></i>
            </a>
	</li>
	<li class="nav-item">
		<a class="nav-link" href="adminchart">
              <span class="menu-title">Charts</span>
              <i class="mdi mdi-chart-bar menu-icon"></i>
            </a>
	</li>
	<li class="nav-item">
		<a class="nav-link" href="about.jsp">
              <span class="menu-title">About Us</span>
              <i class="mdi mdi-account-multiple menu-icon"></i>
            </a>
	</li>
	 </ul>
       </div>
     <div id="nav1" class="nav1">
     </div>
          <!-- <li class="nav-item"> 
            <a class="nav-link" href="index.jsp">
               <div class="settleList" id="settleList"></div>
               
            </a>
          </li> -->
    </nav>
     <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="page-header">
            <h3 class="page-title">
              <span class="page-title-icon bg-gradient-primary text-white mr-2">
                <i class="mdi mdi-file-document"></i>                 
              </span>
              SECURITIES
            </h3>
 
          </div>
	<div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body" >
                 
                  <%
					List<Manages> list1 = (List<Manages>)request.getAttribute("table2");
               	
					%>
                  <table class="table table-dark">
                    <thead>
                      <tr>
                      <th>
                          S.NO
                        </th>
                        <th>
                          COMPANY NAME
                        </th>
                         <th>
                          SECURITY NAME
                        </th>
                        <th>
                          AVAILABLE FUNDS
                        </th>
                        <th>
                          NETTED FUNDS
                        </th>
                        <th>
                          COST OF SETTLEMENT
                        </th>
                      </tr>
                    </thead>
                    <%
                    int i=0;
                    for(Manages t : list1){
                    	i++;
                    %>
                    
                    <tbody>
                      <tr>
                        <td>
                     	<% out.println(i); %>
                        </td>
                        <td>
                          <% String sec1=t.getCompanyId();
                          String name1=null;
                          if(sec1.equals("C01")){
                           name1="Citi";}
                          else if(sec1.equals("C02")){
                           name1="GoldmanSachs";}
                          else if(sec1.equals("C03")){
                               name1="DeutscheBank";}
                          else if(sec1.equals("C04")){
                               name1="JPMorgan";}
                         
                         
                         out.println(name1); %>
                        </td>
                         <td>
                          <% String sec=t.getSecurityId();
                          String name=null;
                          if(sec.equals("S01")){
                           name="Apple";}
                          else if(sec.equals("S02")){
                           name="GE";}
                          else if(sec.equals("S03")){
                               name="Walmart";}
                          else if(sec.equals("S04")){
                               name="LinkedIn";}
                          else if(sec.equals("S05")){
                               name="Facebook";}
                         
                         out.println(name); %>
                        </td>
                        <td>
                          <% out.println(t.getAvailableSecurities()); %>
                        </td>
                        <td>
                          <% out.println(t.getNettedSecurities()); %>
                        </td>
                        <td>
                          <% out.println(t.getCostOfSettlementForSecurities()); %>
                        </td>
                      </tr>
                      <% } %>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
	
	<!-- <br><ul>
		<li>Funds</li><br>
		<li>Securities</li><br>
		<li>Cost of settlement</li><br>
		<li>Shortages</li><br>
		<li>Generate PDF</li>
	</ul> -->
	 <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
       
        <!-- partial -->
      </div>
      
      <!-- main-panel ends -->
    </div>
     <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">THANK YOU!! All rights reserved.<br>POWERED BY CITI</span>
            <!-- <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i></span> -->

          </div>
        </footer>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
 <!--  --> <script src="js/scripts.js"></script> -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <script src="vendors/js/vendor.bundle.addons.js"></script>
  <script src="data.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/misc.js"></script>
  
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="js/dashboard.js"></script>
  <!-- End custom js for this page-->
  <script type="text/javascript">

</body>
</html>