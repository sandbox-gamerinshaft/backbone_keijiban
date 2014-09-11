class SApp.Routers.SAppRouter extends Backbone.Router
  routes:
    "index" : "index"
    ""      : "index"

  index: ->
    view = new SApp.Views.IndexView()
    $("#boards").html(view.render().el)