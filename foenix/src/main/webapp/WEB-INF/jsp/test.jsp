<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/jsp/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
$( document ).ready(function() {
    console.log( "ready!" );
    var submitExternal = '${submitExternal}';
    if(submitExternal == "true")
   	 $("#testFormIdExternal").submit();
});
</script>
</head>
<body>

<form class="form-align" id="testFormIdExternal" action="https://www.w3schools.com/bootstrap/bootstrap_forms.asp"  target="_blank" hidden=true>
<div class="form-group">
			<label for="email">Email address:</label> <input type="email"
				class="form-control" id="email">
		</div>
		<button type="submit" class="btn btn-default">Submit</button>
	</form>
	<form class="form-align" id="testFormId"
		action="<%=request.getContextPath()%>/testPost/" method="POST">
		<div class="form-group">
			<label for="email">Email address:</label> <input type="email"
				class="form-control" id="email">
		</div>
		<div class="form-group">
			<label for="pwd">Password:</label> <input type="password"
				class="form-control" id="pwd">
		</div>
		<div class="checkbox">
			<label><input type="checkbox">Remember me</label>
		</div>
		<button type="submit" class="btn btn-default">Submit</button>
	</form>
</body>
</html>