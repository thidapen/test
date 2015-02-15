controllers = angular.module("controllers")
controllers.controller('RepeatController', ['$scope',
 ($scope) ->
    $scope.setColors = ->
      $scope.values = ['Red', 'Blue', 'Green', 'Purple', 'Orange']

    $scope.setProvinces = ->
      $scope.values = ['Kandal', 'Siem Reap', 'Battambang', 'Svay Rieng']

    $scope.getValues = ->
      $scope.values
  ])