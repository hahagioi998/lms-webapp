<%@page import="model.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Leave Detail</title>
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/dateutil.js"></script>
<script>

$(document).ready(function(){
	console.log("Jquery Loaded");	
	var todayDate= getCurrentDate();
	$("#fromDate").attr("min",todayDate);
	$("#toDate").attr("min",todayDate);
	
});

function fromDateSelected(){
	var fromDate = $("#fromDate").val();
	console.log("FromDateSelected:" + fromDate);
	$("#toDate").attr("min",fromDate);
}
/* $(document).ready(function(){
	console.log("Jquery Loaded");
	var date= new Date();
	var month = parseInt(date.getMonth()+1);
	var currentMonth = addZeroPrefix(month);
	var todayDate = date.getFullYear() +"-" + currentMonth+"-" + addZeroPrefix(date.getDate());
	console.log(todayDate);
	//$("#fromDate").attr("min","2017-02-15");
	$("#fromDate").attr("min",todayDate);
});

function addZeroPrefix(month){
	var m ="";
	if ( month <10){
		m= "0"+ month;
	}
	else
	{
		m = month;
	}
	return m;
} */


</script>

</head>
<body>
	<jsp:include page="/layout/header.jsp"></jsp:include>
	<div id="msg"></div>
	<div class="container">
		
		<div class="row">
			<div class="col-md-2">

				<div class="portlet-title">
					<div class="page-header">
						<h4>Apply Leave</h4>
					</div>
				</div>
				<div class="portlet-body">
					<form id="addLeaveDetailFrm" class="form-horizontal" role="form"
						method="GET" action="InsertLeaveDetail">

						<div class="form-group">
							<label for="leaveType">LeaveType:</label> <select
								class="form-control" name="leaveType" required id="leaveType">
								<option value="1">Casual Leave</option>
								<option value="2">SickLeave</option>
								<option value="3">Paid Leave</option>

							</select>
						</div>
						<div class="form-group">
							<label for="fromDate">From Date:</label><input type="date"
								class="form-control" id="fromDate"  name="fromDate" required  autofocus
								id="fromDate" oninput="fromDateSelected()">
						</div>
						<div class="form-group">
							<label for="toDate">To Date</label><input type="date"
								class="form-control" id="toDate" name="toDate" required autofocus
								id="toDate">
						</div>
						<div class="form-group">
							<label for="noOfDays">No Of Days:</label><input type="text"
								class="form-control" name="noOfDays" required autofocus
								id="noOfDays">
						</div>



						<div class="form-group">
							<button type="submit" class="btn btn-success"
								id="addLeaveDetailBtn">Submit</button>
						</div>

					</form>

				</div>
				
			</div>

		</div>
	</div>


</body>

</html>