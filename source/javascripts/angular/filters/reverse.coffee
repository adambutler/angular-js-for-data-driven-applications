angular.module("app").filter "reverse", ->
  (text) ->
    return "" unless text?
    return text.split("").reverse().join("")

