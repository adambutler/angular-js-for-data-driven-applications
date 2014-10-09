angular.module('app').controller "SvgCtrl", ($scope, $interval) ->
  $scope.date = new Date()
  $scope.hourMarkers = [0..11]
  $scope.minuteMarkers = [0..59]
  
  $scope.getDegreesForUnit = (unit, totalUnits) ->
    (360/totalUnits)*unit
  
  $scope.getHours = ->
    $scope.getDegreesForUnit $scope.date.getHours(), 12
    
  $scope.getMinutes = ->
    $scope.getDegreesForUnit $scope.date.getMinutes(), 60
    
  $scope.getSeconds = ->
    $scope.getDegreesForUnit $scope.date.getSeconds(), 60
  
  $interval ->
    $scope.date = new Date()
  , 1000
