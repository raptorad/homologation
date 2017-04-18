var tableController = angular.module('tableController',[]);

tableController.controller('tableCtrl',  ['$scope', '$http', '$filter', function($scope, $http, $filter){
	$scope.suppliants=[
		{id:1, name:"Grzegorz"},
		{id:2, name:"Mariola"},
		{id:3, name:"Ignacy"},
		{id:4, name:"Patryk"}
	];
	$scope.suppliantName = function(id)
	{
		var r;
		for(var i=0, len=$scope.suppliants.length;i<len;++i)
		{
			
			if($scope.suppliants[i].id == id)
			{
				r=$scope.suppliants[i].name;
				return $scope.suppliants[i].name;
			}
		}
		return r;
	};
	$scope.suppliantCases=function(id)
	{
		var ret=[];
		for(var i=0,len=$scope.cases.length;i<len;++i)
		{
			var c=$scope.cases[i];
			if(c.suppliantID == id)
			{
				ret.push(c);
			}
			
		}
		return ret;
		
	}
	function clone(obj) {
	    if (null == obj || "object" != typeof obj) return obj;
	    var copy = obj.constructor();
	    for (var attr in obj) {
	        if (obj.hasOwnProperty(attr)) copy[attr] = obj[attr];
	    }
	    return copy;
	}
	$scope.extendedTable=function()
	{
		var ret=[];
		for(var i=0,len=$scope.cases.length;i<len;++i)
		{
			var c=clone($scope.cases[i]);
			c.suppliantName=$scope.suppliantName(c.suppliantID);
			ret.push(c);
		}
		return ret;
	}
	$scope.cases =[
    	{suppliantID:1, caseID:1, description:"description1",
    		factoryControllDate:new Date(),prototypeControllDate:"01-04-2017",
    		prototypeControllReport:"fajnie było", factoryControllReport:"fajnie było",
    		documentation:"http://localhost:8080/homologationITS/placeholder"
    	},
    	{suppliantID:1, caseID:2, description:"description2",
    		factoryControllDate:new Date(),prototypeControllDate:"01-04-2017",
    		prototypeControllReport:"fajnie było", factoryControllReport:"fajnie było",
    		documentation:"http://localhost:8080/homologationITS/placeholder"
    	},
    	{suppliantID:2, caseID:3, description:"description3",
    		factoryControllDate:new Date(),prototypeControllDate:"01-04-2017",
    		prototypeControllReport:"fajnie było", factoryControllReport:"fajnie było",
    		documentation:"http://localhost:8080/homologationITS/placeholder"
    	},
    	{suppliantID:4, caseID:4, description:"description4",
    		factoryControllDate:new Date(),prototypeControllDate:"01-04-2017",
    		prototypeControllReport:"fajnie było", factoryControllReport:"fajnie było",
    		documentation:"http://localhost:8080/homologationITS/placeholder"
    	}
    ];
	$scope.currCase=$scope.cases[0];
}]);