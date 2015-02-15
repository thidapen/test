describe 'Routes', ->
	scope = null
	ctrl = null
	route = null 
 beforeEach ->
   # Load the controller's module
   module 'myApp'

   # Inject angular constructs otherwise,
   #  you will need to inject these into each test
   inject (_$route_) ->
     route = _$route_
	it 'routes should work properly', ->
	 expect(route.routes['/inbox'].controller).toBe 'InboxController'  
   expect(route.routes['/inbox'].templateUrl).toBe 'inbox.html'
   expect(route.routes['/inbox/email/:id'].templateUrl).toBe 'email.html' 
   expect(route.routes['/inbox/email/:id/new'].templateUrl).toBe 'form.html' 