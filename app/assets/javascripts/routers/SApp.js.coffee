class SApp.Routers.SAppRouter extends Backbone.Router
  routes:
    "index" : "index"
    "new"   : "new"
    ""      : "application"
  constructor: (options)->
    super()
    @boards = options.boards


  index: ->
    view = new SApp.Views.IndexView()
    $("#boards").html(view.render().el)

  application: ->
    boards = new SApp.Collections.SAppColletcion(@boards)
    view = new SApp.Views.SAppView()
    $("#app").html(view.render().el)

  new: ->
    view = new SApp.Views.NewView()
    $("#create").html(view.render().el)
