class SApp.Views.NewView extends Backbone.View
  className: "newBoard"
  tagName:   "form"
  template:  JST["boards/new"]

  events:
    "submit" : "save"

  constructor: (options)->
    super()
    @boards = options.boards
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
      success: (board) =>
        @boards.add board
        @board = new SApp.Models.Boards()
        $(@template).find("[name=title]").val("")
        $(@template).find("[name=content]").val("")
      error: =>
        alert "something error"

