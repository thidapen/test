services = angular.services("services")
services.factory 'InboxFactory', 
($q, $http, $location) ->
  'use strict'
  exports = {}
  exports.messages = []

  exports.goToMessage = (id) ->
    if angular.isNumber(id)
      console.log 'inbox/email/' + id
      $location.path 'inbox/email/' + id

  exports.deleteMessage = (id, index) ->
    @messages.splice index, 1

  exports.getMessages = ->
    deferred = $q.defer()
    $http.get('./emails.json').success((data) ->
      exports.messages = data
      deferred.resolve data
    ).error((data) ->
      deferred.reject data
    )
    deferred.promise

  exports
