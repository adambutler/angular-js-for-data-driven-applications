# class Device

#   type: "Mobile"
#   resolution: "unknown"
#   orientation: {}

#   about: ->
#     for key, value of @
#       console.log(key, value) unless typeof(value) is "function"

#   getResolution: ->
#     "#{window.screen.width} x #{window.screen.height}"

#   startListeningForOrientationEvents: ->
#     if window.DeviceOrientationEvent
#       window.addEventListener "deviceorientation", @orientationUpdate, true

#   orientationUpdate: (event) =>
#     @orientation = event
#     @onUpdate(@)

#   setupEvents: ->
#     @startListeningForOrientationEvents()

#   constructor: ->
#     @type = "Desktop" unless device.mobile()
#     @resolution = @getResolution()

#     @setupEvents()

#   onUpdate: ->
#     # Do nothing


angular.module('app').controller "deviceCtrl", ["$scope", ($scope) ->

  $scope.devices = []
  $scope.presenter = new Presenter('presenter')
  

  # d = new Device
  # $scope.devices.push(d)
  # d.onUpdate = (device) ->
  #   $scope.$apply()

]

