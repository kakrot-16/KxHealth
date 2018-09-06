<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="en">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link
			href="<%=basePath%>jsp/nurse/admin/vendors/bootstrap/dist/css/bootstrap.min.css"
			rel="stylesheet">
	<!-- Font Awesome -->
	<link
			href="<%=basePath%>jsp/nurse/admin/vendors/font-awesome/css/font-awesome.min.css"
			rel="stylesheet">
	<!-- NProgress -->
	<link
			href="<%=basePath%>jsp/nurse/admin/vendors/nprogress/nprogress.css"
			rel="stylesheet">
	<!-- iCheck -->
	<link
			href="<%=basePath%>jsp/nurse/admin/vendors/iCheck/skins/flat/green.css"
			rel="stylesheet">
	<!-- Datatables -->
	<link
			href="<%=basePath%>jsp/nurse/admin/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css"
			rel="stylesheet">
	<link
			href="<%=basePath%>jsp/nurse/admin/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css"
			rel="stylesheet">
	<link
			href="<%=basePath%>jsp/nurse/admin/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css"
			rel="stylesheet">
	<link
			href="<%=basePath%>jsp/nurse/admin/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css"
			rel="stylesheet">
	<link
			href="<%=basePath%>jsp/nurse/admin/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css"
			rel="stylesheet">

	<!-- Custom Theme Style -->
	<link href="<%=basePath%>jsp/nurse/admin/build/css/custom.min.css"
		  rel="stylesheet">

	<!-- bootstrap-progressbar -->
	<link
			href="<%=basePath%>jsp/nurse/admin/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css"
			rel="stylesheet">
	<!-- JQVMap -->
	<link
			href="<%=basePath%>jsp/nurse/admin/vendors/jqvmap/dist/jqvmap.min.css"
			rel="stylesheet" />
	<!-- bootstrap-daterangepicker -->
	<link
			href="<%=basePath%>jsp/nurse/admin/vendors/bootstrap-daterangepicker/daterangepicker.css"
			rel="stylesheet">

	<!-- Custom Theme Style -->
	<link href="<%=basePath%>jsp/nurse/admin/build/css/custom.min.css"
		  rel="stylesheet">
	<title>Insert title here</title>
</head>
<body>
<div class="right_col" role="main">

	<div class="">


		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">

					<div class="x_content">

						<table id="datatable" class="table table-striped table-bordered">
							<thead>
							<tr>
								<th>预约医生</th>
								<th>预约日期</th>
								<th>预约状态</th>
							</tr>
							</thead>
							<tbody>
							<c:forEach items="${appointmentList}" var="list">
								<tr>
									<td>${list.ap_doc_id}</td>
									<td><fmt:formatDate value="${list.ap_time}"
														pattern="yyyy-MM-dd HH:mm" /></td>
									<td>${list.ap_status==1?"生效":"<span style='color:red'>失效</span>"}</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<script
		src="<%=basePath%>jsp/nurse/admin/vendors/jquery/dist/jquery.min.js"></script>
<!-- FastClick -->
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/fastclick/lib/fastclick.js"></script>
<!-- Chart.js -->
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/Chart.js/dist/Chart.min.js"></script>
<!-- gauge.js -->
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/gauge.js/dist/gauge.min.js"></script>
<!-- bootstrap-progressbar -->
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
<!-- Skycons -->
<script src="<%=basePath%>jsp/nurse/admin/vendors/skycons/skycons.js"></script>
<!-- Flot -->
<script src="<%=basePath%>jsp/nurse/admin/vendors/Flot/jquery.flot.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/Flot/jquery.flot.pie.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/Flot/jquery.flot.time.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/Flot/jquery.flot.stack.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/Flot/jquery.flot.resize.js"></script>
<!-- Flot plugins -->
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/flot.curvedlines/curvedLines.js"></script>
<!-- DateJS -->
<script src="<%=basePath%>jsp/nurse/admin/vendors/DateJS/build/date.js"></script>
<!-- JQVMap -->
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/jqvmap/dist/jquery.vmap.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
<!-- bootstrap-daterangepicker -->
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/moment/min/moment.min.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- NProgress -->
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/nprogress/nprogress.js"></script>
<!-- iCheck -->
<script src="<%=basePath%>jsp/nurse/admin/vendors/iCheck/icheck.min.js"></script>
<!-- Datatables -->
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/jszip/dist/jszip.min.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/pdfmake/build/pdfmake.min.js"></script>
<script
		src="<%=basePath%>jsp/nurse/admin/vendors/pdfmake/build/vfs_fonts.js"></script>

<!-- Custom Theme Scripts -->
<script src="<%=basePath%>jsp/nurse/admin/build/js/custom.min.js"></script>

</body>
</html>