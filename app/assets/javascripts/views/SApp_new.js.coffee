class SApp.Views.NewView extends Backbone.View
  className: "newBoard"
  tagName:   "form"
  template:  JST["boards/new"]

  events:
    "submit" : "save"

  constructor: (options)->
    super()
    @board  = new SApp.Models.Boards()

  render: ->
    @$el.html @template()
    return @

  save: (e)->
    e.preventDefault()
    e.stopPropagation()
