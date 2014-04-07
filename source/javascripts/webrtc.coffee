class Connection

  live: false
  events: {}
  timeout: 2000

  on: (eventType, callback) ->
    @events[eventType] = [] unless @events[eventType]? 
    @events[eventType].push callback

  call: (eventType) ->
    event() for event in @events[eventType]

  setupEvents: ->
    @connection.on 'error', @error
    @connection.on 'close', @close
    @connection.on 'open', @open

  error: (err) =>
    @live = false
    @connect() if @autoreconnect
    console.log "An error ooccurred"
    console.log e

  close: =>
    @live = false
    @connect() if @autoreconnect
    console.log "Connection closed"

  open: =>
    @live = true
    clearTimeout(@timer)
    console.log "Connection open"
    @call 'open'

  setupTimeout: ->
    @timer = setTimeout =>
      @connect() unless @live
    , @timeout

  connect: ->
    console.log "Client #{@device.id} connecting to peer - #{@remoteID}"
    @connection = @device.peer.connect(@remoteID)
    @setupEvents()
    @setupTimeout() if @autoreconnect

  constructor: (@device, @remoteID, @autoreconnect = true) ->
    @connect()

class Device

  connections: []

  constructor: (@id, @host = '127.0.0.1', @port = 9000) ->
    # Generate a random enough ID
    @id = Math.random().toString(36).substring(7) unless @id?

    # Generate a peer for the device
    @peer = new Peer(@id,
      host: @host
      port: @port
    )

    # Setup Events
    @setupEvents()

  setupEvents: ->
    @peer.on "connection", (connection) =>
      @startListeningToConnection(connection)

  startListeningToConnection: (connection) ->
    connection.on 'data', (data) ->
      console.log "Got Data: #{data}"

  connectToPeer: (id) ->
    connection = new Connection(@, id)
    @connections.push(connection)
    return connection

class Client extends Device
  ping: (payload = 'ping', interval = 5000) ->
    setInterval =>
      console.log "Sending payload - #{payload}"
      @connection.send payload
    , interval

class Presenter extends Device

  ping: ->
    console.log 'pong'

root = exports ? this
root.Device = Device
root.Client = Client
root.Presenter = Presenter
