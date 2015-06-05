Rdmobile.Views.Home ||= {}

class Rdmobile.Views.Home.IndexView extends Backbone.View
  template: JST["backbone/templates/home/index"]

  render: =>
    $(@el).html(@template)

    return this
		