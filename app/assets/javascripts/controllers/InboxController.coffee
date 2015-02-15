controllers = angular.module("controllers")
controllers.controller("InboxController", ['$scope','$rootScope', 'usersService','$http',
	($scope,$rootScope,usersService,$http) -> 
		# $scope.title = "Welcome to inbox"
		$http.get('./users.json').success (users) ->
			usersService.setAllUsers(users)

			$scope.users = usersService.getAllUsers()
		$scope.selectUser = (user) ->
			usersService.setCurrentUser(user)
			$rootScope.$broadcase('userChanged')
])

				