<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title><tiles:insertAttribute name="title" /></title>

  <!-- Custom fonts for this template-->
  <link href='<c:url value="/lib/vendor/fontawesome-free/css/all.min.css" />' rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href='<c:url value="/lib/css/sb-admin-2.min.css" />' rel="stylesheet">

</head>

<body id="page-top">
	<div id="wrapper">
		<tiles:insertAttribute name="header" />
		<!-- Content Wrapper -->
    	<div id="content-wrapper" class="d-flex flex-column">

      		<!-- Main Content -->
	      	<div id="content">
	      		<tiles:insertAttribute name="nav" />
	      		<tiles:insertAttribute name="content" />
	      	</div>
	      	<tiles:insertAttribute name="footer" />
      	</div>
	</div>
	
	<!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">�</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Bootstrap core JavaScript-->
  <script src='<c:url value="/lib/vendor/jquery/jquery.min.js" />'></script>
  <script src='<c:url value="/lib/vendor/bootstrap/js/bootstrap.bundle.min.js" />'></script>

  <!-- Core plugin JavaScript-->
  <script src='<c:url value="/lib/vendor/jquery-easing/jquery.easing.min.js" />'></script>

  <!-- Custom scripts for all pages-->
  <script src='<c:url value="/lib/js/sb-admin-2.min.js" />'></script>

  <!-- Page level plugins -->
  <script src='<c:url value="/lib/vendor/chart.js/Chart.min.js" />'></script>

  <!-- Page level custom scripts -->
  <script src='<c:url value="/lib/js/demo/chart-area-demo.js" />'></script>
  <script src='<c:url value="/lib/js/demo/chart-pie-demo.js" />'></script>
</body>
</html>