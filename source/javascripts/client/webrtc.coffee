class DeviceStatus

  type: "Mobile"
  resolution: "unknown"
  orientation: {}
  events: []

  on: (eventType, callback) ->
    @events[eventType] = [] unless @events[eventType]? 
    @events[eventType].push callback

  callEvent: (eventType) ->
    if @events[eventType]?
      event() for event in @events[eventType]

  about: ->
    for key, value of @
      console.log(key, value) unless typeof(value) is "function"

  getResolution: ->
    "#{window.screen.width} x #{window.screen.height}"

  startListeningForOrientationEvents: ->
    if window.DeviceOrientationEvent
      #window.addEventListener "deviceorientation", @orientationUpdate, true
      window.addEventListener "devicemotion", @orientationUpdate, true

  orientationUpdate: (event) =>

    console.log event

    if event.accelerationIncludingGravity?
      console.log 'a'
      @orientation.alpha = event.accelerationIncludingGravity.x * 10
      @orientation.beta = event.accelerationIncludingGravity.y * 10
      @orientation.gamma = event.accelerationIncludingGravity.z * 10
    else if event.alpha? or event.beta? or event.gamma?
      console.log 'b'
      @orientation.alpha = event.alpha
      @orientation.beta = event.beta
      @orientation.gamma = event.gamma
    else
      console.log 'c'

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
    @callEvent('update')


$ ->
  deviceStatus = new DeviceStatus()

  client = new Client
  deviceConnection = client.createDeviceConnection()
  deviceConnection.dial 'presenter'
  deviceConnection.on 'connectionOpen', =>
    deviceStatus.on 'update', ->
      deviceConnection.send(
        name: $('input').val()
        status: deviceStatus.getData()
      )

