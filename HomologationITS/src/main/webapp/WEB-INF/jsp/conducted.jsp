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
	
	  I have {{cases.length}} friends. They are:
  <input type="search" ng-model="q" placeholder="filter friends..." aria-label="filter friends" />
  <ul class="list-group">
    <li class="list-group-item" ng-repeat="case in extendedTable() | filter:q as results">
    <div align="center">
    <table>
    	<tr><td><b>Petent: </b>{{case.suppliantName}}</td></tr>
    	<tr><td><b>Dokumentacja pojazdu: </b><a href="{{case.documentation}}">link</a></td></tr>
    	<tr><td><b>Opis: </b>{{case.description}}</td></tr>
    	<tr><td><b>Sprawozdanie z kontroli: </b>{{case.factoryControllReport}}</td></tr>
    </table>
    </div>
    </li>
    <li class="list-group-item" ng-if="results.length === 0">
      <strong>No results found...</strong>
    </li>
  </ul>

	<footer class="text-center">
    	<div class="container">
        	<div class="row">
            	<div class="col-md-12">
                    <h3>Footer</h3>
            	</div>
    		</div>
    	</div>
    </footer>

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