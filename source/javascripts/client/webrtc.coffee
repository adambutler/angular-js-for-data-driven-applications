$ ->

  client = new Client
  deviceConnection = client.createDeviceConnection()
  deviceConnection.dial 'presenter'
  deviceConnection.on 'connectionOpen', ->
    deviceConnection.send('ping')
