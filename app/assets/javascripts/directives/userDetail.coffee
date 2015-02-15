directives = angular.module("directives")
directives.directive("userDetail", ->
	templateUrl : "userDetail.html",
	restrict : 'E',
	replace : true,
	controller : ['$scope', ($scope) ->
		$scope.$on('currentUser', ->
			$scope.currentUser = true
		)
	]
)