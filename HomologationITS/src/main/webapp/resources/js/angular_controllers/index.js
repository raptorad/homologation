var indexController = angular.module('indexController',[]);

indexController.controller('indexCtrl', ['$scope', '$http', '$filter', function($scope, $http, $filter) 
{

	$scope.form = [];
	this.name="Michal";
	$scope.loadFormOnClick = function() {
		
		var dataObj = 'random_letters';
		
		var response = $http.post('http://localhost:8080/HomologationITS/data/indexForm', dataObj);
		response.success(function(data, status, headers, config) {
			angular.copy(data, $scope.form);
		});
		response.error(function(data, status, headers, config) {
			alert("Error: Could not load form. Please try again.");
		});
	};
	
	/* Forms switching */
	
	$scope.hideMainForm = false;
	$scope.hideOtherForm = true;

	$scope.showOtherForm = function() {		    
		$scope.hideMainForm = false;
		$scope.hideOtherForm = false;
	};

}]);