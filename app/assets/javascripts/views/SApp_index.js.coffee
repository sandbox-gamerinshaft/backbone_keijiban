class SApp.Views.IndexView extends Backbone.View
  className: "board"
  tagName:   "div"
  template:  JST["boards/index"]

  render: ->
    @$el.html @template()
    return @
