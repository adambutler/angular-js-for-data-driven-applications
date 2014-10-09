angular.module('app').controller "ActionsCtrl", ($scope) ->

  $scope.counter = 0

  $scope.add = (qty = 1) ->
    $scope.counter += qty
