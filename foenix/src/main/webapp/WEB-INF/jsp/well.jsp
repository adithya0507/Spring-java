<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/header.jsp"%>
<script>
   $(document).ready(function() {
    	$('#wellTableId').DataTable();
   	 	$('#wellTableId tbody').on( 'click', 'tr', function () {
   	        $(this).toggleClass('selected');
   	    });
	});
</script>
<br>
<ul class="nav nav-tabs">
	<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/country/">Country</a></li>
	<li class="nav-item"><a class="nav-link active" href="<%=request.getContextPath()%>/well/">Well</a></li>
	<li class="nav-item"><a class="nav-link" href="#">Sample</a></li>
</ul>
<div class="tab-content" id="myTabContent">
	<table class="table" id="wellTableId">
		<thead class="thead-dark">
			<tr>
				<th scope="col">S.no</th>
				<th scope="col">Country</th>
				<th scope="col">Country Code</th>
				<th scope="col">Well Name</th>
				<th scope="col">Well Code</th>
			</tr>
		</thead>
		<tbody>
			 <c:forEach items="${wells}" var="well" varStatus="counter">
			 	<tr>
		         	<td>${counter.count}</td>
					<td>${well.countryName}</td>
					<td>${well.countryCode}</td>
					<td>${well.wellName}</td>
					<td>${well.wellCode}</td>
				</tr>
	          </c:forEach>
		</tbody>
	</table>
</div>
<br>
