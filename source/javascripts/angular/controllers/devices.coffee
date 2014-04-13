angular.module('device', []).controller "deviceCtrl", ["$scope", ($scope) ->

  $scope.devices = []
  $scope.presenter = new Presenter('presenter')
  console.log $scope.presenter.on 'connectionData', (data) ->
    console.log "DATA", data

]
