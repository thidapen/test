directives = angular.module("directives")
directives.directive('myCircle',  ->
	templateUrl : 'circle.html',
	controller : ['$scope','$rootScope',
	($scope, $rootScope) ->
		$scope.afterClick = ->
			$rootScope.$broadcast('clicked')
]
	link : (scope, element) ->
		element.on('click', ->
			scope.$apply( ->
				scope.afterClick()
				)
			)
	)
