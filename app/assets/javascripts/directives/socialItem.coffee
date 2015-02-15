directives = angular.module('directives')
directives.directive('socialItem', ['SOCIAL', 'faSocialClassName',
	(SOCIAL, faSocialClassName) ->
		(scope, element, attrs) ->
			element.html('<span class="' + faSocialClassName(attrs.socialItem) + '"></span>')
])