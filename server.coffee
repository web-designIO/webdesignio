log = require('util').log
http = require('http')

mongoose = require('mongoose')

project = null
mongooseUrl = process.env.MONGOHQ_URL
mongooseUrl = process.env.MONGO_URI unless mongooseUrl?
mongooseUrl = process.env.MONGOLAB_URI unless mongooseUrl?
port = process.env.PORT or 3000

unless mongooseUrl

  # Construct connection url for local environment.
  mongooseUrl = 'mongodb://localhost/local'

server = http
  .createServer (req, res) ->
    run = =>
      project.call this, req, res

    # Boot the application directly if mongoose is already connected.
    return run() if project

    # Attempt to connect.
    mongoose.connect mongooseUrl, (err) ->
      return res.end('Failed to connect to database!') if err
      project = require('./index')
      project.set 'server', server

      run()

  # Listen on port 3000 which is brought outside of docker.
  .listen port, ->
    log 'server listening'
