services = angular.services("EmailFactory")
services.factory 'EmailFactory', 
($q, $http, $routeParams) ->
  'use strict'
  exports = {}

  exports.reply = (message) ->
    if message
      # we would obviously hit the back-end here
      # but let's just alert what we've typed
      alert 'Reply content: ' + message
    return

  exports.getMessage = (params) ->
    if params.id
      deferred = $q.defer()
      $http.get('./message/' + params.id + '.json').success((data) ->
        deferred.resolve data
        return
      ).error (data) ->
        deferred.reject data
        return
      return deferred.promise
    return

  exports
