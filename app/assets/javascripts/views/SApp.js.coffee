class SApp.Views.SAppView extends Backbone.View
  className: "app"
  template:  JST["application/index"]

  render: ->
    @$el.html @template()
    return @