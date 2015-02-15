controllers = angular.module("controllers")
controllers.controller("EmailController", ["$scope",
	($scope) -> 
		$scope.generateAges = ->
			ages = []
			i =18
			while i <= 60
				ages.push i
				i++
			ages
		$scope.submit = ->
			if $scope.myForm.$valid
				alert('submitted')
			else
				alert('invalid')
])
