class DeviceStatus

  type: "Mobile"
  resolution: "unknown"
  orientation: {}

  about: ->
    for key, value of @
      console.log(key, value) unless typeof(value) is "function"

  getResolution: ->
    "#{window.screen.width} x #{window.screen.height}"

  startListeningForOrientationEvents: ->
    if window.DeviceOrientationEvent
      window.addEventListener "deviceorientation", @orientationUpdate, true

  orientationUpdate: (event) =>
    @orientation.alpha = event.alpha
    @orientation.beta = event.beta
    @orientation.gamma = event.gamma
    @onUpdate(@)

  setupEvents: ->
    @startListeningForOrientationEvents()

  getData: ->
    type: @type
    resolution: @resolution
    orientation: @orientation

  constructor: ->
    @type = "Desktop" unless device.mobile()
    @resolution = @getResolution()

    @setupEvents()

  onUpdate: ->
    # Do nothing

$ ->



  deviceStatus = new DeviceStatus()

  client = new Client
  deviceConnection = client.createDeviceConnection()
  deviceConnection.dial 'presenter'
  deviceConnection.on 'connectionOpen', =>
    deviceConnection.send( deviceStatus.getData() )


  

  # d = new Device
  # $scope.devices.push(d)
  # d.onUpdate = (device) ->
  #   $scope.$apply()

  # ]

