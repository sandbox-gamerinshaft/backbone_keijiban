class SApp.Views.SAppView extends Backbone.View
  className: "app"
  template:  JST["application/index"]

  events:
    "click #new" : "new"

  render: ->
    @$el.html @template()
    return @

  new: (e)->
    e.preventDefault()
    e.stopPropagation
    view = new SApp.Views.NewView()
    $("#create").html(view.render().el)
