path = require 'path'

environment = process.env.NODE_ENV or 'development'

exports.port = process.env.NODE_ENV or 3000

exports.dirs = 
  assets        : path.join __dirname, 'assets'
  views         : path.join __dirname, 'app/views'
  controllers   : path.join __dirname, 'app/controllers'

exports.environment =
  production    : false
  staging       : false
  test          : false
  development   : false

exports.environment[environment] = true

if environment in ['production', 'staging']
  exports.domain  = 'app.wetalky.com'
  exports.logs    = ':remote-addr - [:date] ":method :url :status :response-time ms'
else
  exports.domain  = 'app.wetalky.com'
  exports.logs    = 'dev'