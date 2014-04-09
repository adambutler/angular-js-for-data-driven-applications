$ ->

  client = new Client
  connection = client.connectToPeer 'presenter'
  connection.on 'open', ->
    client.ping('ping', 500, 5)
