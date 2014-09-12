class SApp.Views.IndexView extends Backbone.View
  className: "board"
  tagName:   "div"
  template:  JST["boards/index"]

  constructor: (options)->
    super()
    @board = options.board

  render: ->
    @$el.html @template(board: @board)
    return @
