class SApp.Views.SAppView extends Backbone.View
  className: "app"
  template:  JST["application/index"]

  events:
    "click #openNew"  : "openNew"
    "click #closeNew" : "closeNew"

  constructor: (options)->
    super()
    console.log options.boards
  render: ->
    @$el.html @template()
    return @

  index: (options)->
    board = options.board
    view = new SApp.Views.IndexView(board: board)
    $("index").append(view.render().el)

  openNew: (e)->
    e.preventDefault()
    e.stopPropagation
    $("new").html('<a href="#new" id="closeNew">閉じる</a>')
    view = new SApp.Views.NewView()
    $("#create").html(view.render().el)

  closeNew: (e)->
    e.preventDefault()
    e.stopPropagation
    $("new").html('<a href="#new" id="openNew">新しく掲示板を作る</a>')
    $("#create").html("")

