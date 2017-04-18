<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>	
	<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCss" />
	<spring:url value="/resources/css/font-awesome.min.css" var="fontawesomeCss" />
	<spring:url value="/resources/css/animate.css" var="animateCss" />
	<spring:url value="/resources/css/table.css" var="table" />
	<link href="${bootstrapCss}" rel="stylesheet" />
	<link href="${fontawesomeCss}" rel="stylesheet" />
	<link href="${animateCss}" rel="stylesheet" />
	<link href="${table}" rel="stylesheet" />
	
	<!-- <spring:url value="/resources/media/sample_icon.png" var="sample_icon" /> -->
</head>
<body ng-app="tableController" ng-controller="tableCtrl">
	
	<form name="myForm">
    <label>
       Description:
       <input type="text" name="userName" ng-model="currCase.description" >
    </label>

    <label>
       Sprawozdanie z kontroli fabryki:
       <input type="text" name="lastName" ng-model="currCase.factoryControllReport">
    </label>
    <h4>Custom calendar trigger</h4>
      <md-datepicker ng-model="currCase.factoryControllDate" md-current-view="year" md-placeholder="Enter date"></md-datepicker>
   </form>

	<spring:url value="/resources/js/jquery-3.2.0.min.js" var="jquery" />	
	<spring:url value="/resources/js/angular.min.js" var="angular" />
	<spring:url value="/resources/js/angular_controllers/tableController.js" var="tableController" />
	<spring:url value="/resources/js/bootstrap.min.js" var="bootstrap" />
	<spring:url value="/resources/js/wow.min.js" var="wow" />
	<spring:url value="/resources/js/wow_init.js" var="wow_init" />	
					
	<script src="${jquery}"></script>		
	<script src="${angular}"></script>
	<script src="${tableController}"></script>
	<script src="${bootstrap}"></script>		
	<script src="${wow}"></script>
	<script src="${wow_init}"></script>	

</body>
</html>