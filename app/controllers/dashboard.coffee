exports.setup = (app) ->
  controller = new exports.DashboardController
  app.get '/', controller.dashboard

class exports.DashboardController

  dashboard: (req, res) ->
    res.json data: "Dashboard"