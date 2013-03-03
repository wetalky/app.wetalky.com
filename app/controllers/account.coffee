exports.setup = (app) ->
  controller = new exports.AccountController
  app.post '/accounts/sign-up', controller.sign_up
  app.post '/accounts/sign-in', controller.sign_in
  app.post '/accounts/sign-out', controller.sign_out

class exports.AccountController

  sign_up: (req, res) ->
    res.json data: "Sign Up"

  sign_in: (req, res) ->
    res.json data: "Sign In"

  sign_out: (req, res) ->
    res.json data: "Sign Out"