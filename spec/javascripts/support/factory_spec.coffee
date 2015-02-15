describe 'InboxController', ->
	userService = null
 ctrl = null
 scope = null
 httpBackend = null
 data = null
 setup = (users) ->
 	inject($rootScope, $controller, $httpBackend, _userService_) ->
 		scope = $rootScope.$new()
 		userService = _userService_
 		httpBackend = $httpBackend
 		ctrl = $controller("InboxController",
 				$scope: scope
 			)
 beforeEach (module('myApp'))
 describe 'Users', ->
 	beforeEach ->
	  users = [
	  	{name: "Thida"}
	  ]
	  setup(users)
	  httpBackend.flush()
 	it 'fetch user from users.json', ->
 		expect(scope.users).toEqualData(userService.getAllUsers()) 
   
   
 