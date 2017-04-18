var docUpload = angular.module('docUploadController',[]);

/*docUploadController.controller('indexCtrl', ['$scope', '$http', '$filter', function($scope, $http, $filter) 
{

	$scope.form = [];
	$scope.loadFormOnClick = function() {
		
		var dataObj = 'random_letters';
		
		var response = $http.post('http://localhost:8080/HomologationITS/data/docUploadForm', dataObj);
		response.success(function(data, status, headers, config) {
			angular.copy(data, $scope.form);
		});
		response.error(function(data, status, headers, config) {
			alert("Error: Could not load form. Please try again.");
		});
	};
	
	/* Forms switching */
	/*
	$scope.hideMainForm = false;
	$scope.hideOtherForm = true;

	$scope.showOtherForm = function() {		    
		$scope.hideMainForm = true;
		$scope.hideOtherForm = false;
	};

}]);*/
docUpload.directive('fileModel', ['$parse', function ($parse) {
    return {
       restrict: 'A',
       link: function(scope, element, attrs) {
          var model = $parse(attrs.fileModel);
          var modelSetter = model.assign;
          
          element.bind('change', function(){
             scope.$apply(function(){
                modelSetter(scope, element[0].files[0]);
             });
          });
       }
    };
 }]);

docUpload.service('fileUpload', ['$https:', function ($https) {
    this.uploadFileToUrl = function(file, uploadUrl){
       var fd = new FormData();
       fd.append('file', file);
    
       $https.post(uploadUrl, fd, {
          transformRequest: angular.identity,
          headers: {'Content-Type': undefined}
       })
    
       .success(function(){
       })
    
       .error(function(){
       });
    }
 }]);

docUpload.controller('docUploadController', ['$scope', 'fileUpload', function($scope, fileUpload){
    $scope.uploadFile = function(){
       var file = $scope.myFile;
       
       console.log('file is ' );
       console.dir(file);
       
       var uploadUrl = "/fileUpload";
       fileUpload.uploadFileToUrl(file, uploadUrl);
    };
 }]);