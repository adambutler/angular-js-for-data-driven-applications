PeerServer = require("peer").PeerServer

server = new PeerServer(
  port: 9000
)

server.on 'connection', (id) ->
  console.log "Connection - #{id}"

server.on 'disconnect', (id) ->
  console.log "Disconnect - #{id}"
