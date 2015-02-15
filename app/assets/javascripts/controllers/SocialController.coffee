controllers = angular.module('controllers')
controllers.controller('SocialController', ['$scope','SOCIAL', 
	($scope,SOCIAL) ->
		$scope.services = SOCIAL
	])


