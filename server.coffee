# npm modules
express = require 'express'

# internal modules
db = require './lib/mongo'

# env variables
PORT = process.env.PORT or 8000
MONGOLAB_URI = process.env.PH_MONGOLAB_URI

app = express()

app
  .get '/', (req, res) ->
    res.json status:'up'
  .listen PORT, () ->
    console.log "Express server running on port #{PORT}"
    db.open MONGOLAB_URI
