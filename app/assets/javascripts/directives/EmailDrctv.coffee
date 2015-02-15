directives = angular.module("directives")
directives.directive("email", 
	EmailDrctv ($timeout) ->
		  'use strict'
  {
    restrict: 'E'
    replace: true
    scope: true
    templateUrl: 'email.tmpl.html'
    controllerAs: 'email'
    controller: ($routeParams, $scope, EmailFactory) ->
      @message = {}

      @reply = (message) ->
        EmailFactory.reply message
        return

      getmessage = EmailFactory.getMessage($routeParams)
      if getmessage
        getmessage.then angular.bind(this, (response) ->
          EmailFactory.message = response
          @message = EmailFactory.message
          $scope.$parent.email.title = @message.subject
          return
        )
      return
    link: (scope, element, attrs, ctrl) ->
      textarea = element.find('.email__response-text')[0]
      scope.$watch 'reply', (newVal, oldVal) ->
        if newVal == oldVal
          return
        if newVal
          $timeout (->
            textarea.focus()
            return
          ), 0
        return
      return

  }

	)