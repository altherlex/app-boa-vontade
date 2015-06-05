class Rdmobile.Routers.HomeRouter extends Backbone.Router
  initialize: () ->

  routes:
    "index" : "index"
    ".*"    : "index"

  index: ->
    @view = new Rdmobile.Views.Home.IndexView()
    $("#home").html(@view.render().el)
		