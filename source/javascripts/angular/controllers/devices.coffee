angular.module('app').controller "DeviceCtrl", ($scope) ->

  $scope.safeApply = (fn) ->
    phase = @$root.$$phase
    if phase is "$apply" or phase is "$digest"
      fn()  if fn and (typeof (fn) is "function")
    else
      @$apply fn


  $scope.devices = {}
  $scope.presenter = new Presenter('presenter')
  $scope.presenter.on 'connectionData', (data, senderID) ->
    $scope.safeApply ->
      $scope.devices[senderID] = data
