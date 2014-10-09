window.fig = new figlet()

angular.module("app").filter "ascii", ->
  (text = "") ->
    # return fig.generateText "Doom", {}, text

