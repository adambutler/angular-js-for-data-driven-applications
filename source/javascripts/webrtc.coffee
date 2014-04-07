class Device

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

class Client extends Device

  connectToPeer: (id) ->
    console.log "Client #{@id} connecting to peer - #{id}"
    @connection = @peer.connect(id)
    @connection.on 'error', -> console.log 'Connection Error'
    @connection.on 'close', -> console.log 'Connection Close'
    @connection.on 'open', -> console.log 'Connection Open'

  ping: (payload = 'ping', interval = 1000) ->
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
