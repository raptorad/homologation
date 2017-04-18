<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>	
	<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCss" />
	<spring:url value="/resources/css/font-awesome.min.css" var="fontawesomeCss" />
	<spring:url value="/resources/css/animate.css" var="animateCss" />
	
	<link href="${bootstrapCss}" rel="stylesheet" />
	<link href="${fontawesomeCss}" rel="stylesheet" />
	<link href="${animateCss}" rel="stylesheet" />
	
	<!-- <spring:url value="/resources/media/sample_icon.png" var="sample_icon" /> -->
</head>
<body ng-app="indexController" ng-controller="indexCtrl">
	
	<div ng-hide="hideMainForm">
		<div class="container">		
			<div class="row header-margin">
		    	<div class="col-lg-12">
		        	<h1 class="page-header">Welcome  {{indexCtrl.name}}</h1>
		    	</div>
		    </div>   	    
		</div>
	</div>       	
	<div ng-hide="hideOtherForm">
		
		<div class="container">
			<div class="row header-margin">
		            <div class="col-lg-12">
		                <h1 class="page-header">Other Form
		           
		                    <small>Information</small>
		                </h1>
		            </div>
		    </div>       		
		</div>
	</div>

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
	<spring:url value="/resources/js/angular_controllers/index.js" var="indexController" />
	<spring:url value="/resources/js/bootstrap.min.js" var="bootstrap" />
	<spring:url value="/resources/js/wow.min.js" var="wow" />
	<spring:url value="/resources/js/wow_init.js" var="wow_init" />	
					
	<script src="${jquery}"></script>		
	<script src="${angular}"></script>
	<script src="${indexController}"></script>
	<script src="${bootstrap}"></script>		
	<script src="${wow}"></script>
	<script src="${wow_init}"></script>	

</body>
</html>