angular.module("controllers")
.controller("DetailController", ["$scope", 'usersService', 
			($scope,usersService) ->
				$scope.$on('userChanged', (event) ->
					$scope.currentUser = usersService.getCurrentUser()
					)
])