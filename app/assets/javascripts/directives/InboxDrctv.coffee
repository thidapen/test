directives = angular.module("directives")
directives.directive 'inbox', ->
  'use strict'
  {
    restrict: 'EA'
    replace: true
    scope: true
    templateUrl: 'inbox.tmpl.html'
    controllerAs: 'inbox'
    controller: (InboxFactory) ->
      @messages = []

      @goToMessage = (id) ->
        InboxFactory.goToMessage id

      @deleteMessage = (id, index) ->
        InboxFactory.deleteMessage id, index

      InboxFactory.getMessages().then angular.bind(this, ->
        @messages = InboxFactory.messages
      )
    link: (scope, element, attrs, ctrl) ->

  }
