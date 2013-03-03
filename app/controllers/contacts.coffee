exports.setup = (app) ->
  controller = new exports.ContactController
  app.post '/contacts', controller.hello

class exports.ContactController

  hello: (req, res) ->
    res.json data: "Hello"