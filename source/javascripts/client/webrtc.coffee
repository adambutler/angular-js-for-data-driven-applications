$ ->

  client = new Client
  connection = client.connectToPeer 'presenter'
  connection.on 'open', -> console.log 'open again'
