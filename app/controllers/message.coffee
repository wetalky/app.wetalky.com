exports.setup = (app) ->
  controller = new exports.MessageController
  app.post '/messages', controller.hello

class exports.MessageController

  hello: (req, res) ->
    res.json data: "Hello"