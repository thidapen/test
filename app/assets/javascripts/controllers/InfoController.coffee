controllers = angular.module("controllers")
controllers.controller("InfoController", ["$scope", 'usersService', 
			($scope,usersService) ->
			 usersService.setCurrentUser('Thida')
				$scope.user = usersService.getCurrentUser()
])