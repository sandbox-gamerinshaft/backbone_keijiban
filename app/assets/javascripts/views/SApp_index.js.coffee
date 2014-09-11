class SApp.Views.IndexView extends Backbone.View
  className: "board"
  tagName:   "div"
  template:  JST["boards/index"]

  events:
    "click #hoge" : "new"

  render: ->
    @$el.html @template()
    return @


  new: (e)->
    e.preventDefault()
    e.stopPropagation()
    view = new SApp.Views.NewView()
    $("#create").html(view.render().el)
