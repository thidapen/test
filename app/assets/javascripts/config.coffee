# for config route everything we need
# configs = configs.module("configs")
routes = angular.module("config",[])
routes.config(["$routeProvider",
	($routeProvider) ->
		$routeProvider
			.when("/",
				templateUrl: "index.html"
			)
			.when("/app",
				templateUrl: "app.html"
			)
			.when("/user",
				templateUrl: "user.html"
			)
			.when("/social",
				templateUrl: "social.html"
				controller: "SocialController"
			)
			.when("/animate",
				templateUrl: "animate.html"
			)
			.when("/shape"
				templateUrl: "shape.html"
			)
			.when("/inbox",
				templateUrl: "inbox.html"
				controller: "InboxController"
			)
			.when("/inbox/email/:id", 
				templateUrl: "email.html"
				# controller: "EmailController"
			)
			.when("/email",
				templateUrl: "email.html"
				)
			.when("/inbox/email/:id/new",
				templateUrl: "form.html"
				# controller: "EmailController"
				)
			.otherwise(
				redirectTo: "/inbox"
			)
])