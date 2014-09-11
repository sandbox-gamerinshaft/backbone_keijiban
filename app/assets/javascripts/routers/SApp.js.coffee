class SApp.Routers.SAppRouter extends Backbone.Router
  routes:
    "index" : "index"
    "new"   : "new"
    ""      : "application"

  index: ->
    view = new SApp.Views.IndexView()
    $("#boards").html(view.render().el)

  application: ->
    view = new SApp.Views.SAppView()
    $("#app").html(view.render().el)

  new: ->
    view = new SApp.Views.NewView()
    $("#create").html(view.render().el)
