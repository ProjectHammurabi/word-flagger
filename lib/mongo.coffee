# npm modules
mongoose = require 'mongoose'
db = mongoose
  .createConnection()
  .on 'connecting', () ->
    console.log 'Connecting to database...'
  .on 'connected', () ->
    console.log 'Successfully connected to database!'

module.exports = db
