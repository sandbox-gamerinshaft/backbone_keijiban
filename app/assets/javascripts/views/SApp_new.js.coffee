class SApp.Views.NewView extends Backbone.View
  className: "newBoard"
  tagName:   "div"
  template:  JST["boards/new"]

  render: ->
    @$el.html @template()
    return @