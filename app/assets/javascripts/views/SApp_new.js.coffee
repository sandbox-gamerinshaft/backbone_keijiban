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
    @board.set
      "title" : $(@template).find("[name=title]").val()
      "content" : $(@template).find("[name=content]").val()
    @board.save null,
      success: (box) =>
        alert "good job"
        # @boxes.add box
        # @box = new BBBox.Models.Boxes()
        # $(@template).find("textarea").val("")
      error: =>
        alert "waa"

