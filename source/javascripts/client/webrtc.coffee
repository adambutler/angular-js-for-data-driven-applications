$ ->

  client = new Client
  client.connectToPeer 'presenter'
  client.ping()
