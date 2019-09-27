<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ include file="/WEB-INF/jsp/header.jsp"%>
  <style>
  .form-align {padding-top : 15px; padding-left: 300px;}
  </style>
<form class="form-align">
    <div class="form-group row">
      <label for="Country" class="col-sm-2 col-form-label">Country</label>
      <div class="col-sm-4">
      <select id="countryId" class="form-control">
        <c:forEach items="${countries}" var="country" varStatus="counter">
					<option>${country}</option>
	    </c:forEach>
      </select>
      </div>
    </div>
    <div class="form-group row">
      <label for="province" class="col-sm-2 col-form-label">Province/State</label>
      <div class="col-sm-4">
      <select id="provinceId" class="form-control">
		<option>province-1</option>
		<option>province-2</option>
		<option>province-3</option>
      </select>
      </div>
    </div>
    <div class="form-group row">
      <label for="well" class="col-sm-2 col-form-label">Well</label>
      <div class="col-sm-4">
      <input type="text" class="form-control" id="wellId">
      </div>
    </div>
    <div class="form-group row">
      <label for="sample" class="col-sm-2 col-form-label">Sample</label>
      <div class="col-sm-4">
      <input type="text" class="form-control" id="sampleId">
      </div>
    </div>
</form>