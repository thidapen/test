services = angular.module("services")
services.factory('faSocialClassName', () ->
	(name) ->
		'fa fa-' + name
)