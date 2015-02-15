services = angular.module("services")
services.factory 'usersService',['$rootScope',($rootScope)->
	user = null
	AllUser = null
	setCurrentUser : (current) ->
		user = current
		$rootScope.$broadcast('userChanged')
	getCurrentUser : () ->
		user
	setAllUsers : (alluser) ->
		AllUser = alluser
	getAllUsers : () ->
		AllUser
]