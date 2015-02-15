directives = angular.module("directives")
directives.directive('myRectangle', ->
	templateUrl : 'rectangle.html',
	restrict : 'E',
	replace : true,
	controller : ['$scope', ($scope) ->
		$scope.$on('clicked', ->
			$scope.clicked = true
		)
	]
)