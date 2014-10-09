angular.module("app").factory "Helpers", ->
  arrayToObjects: (array, key) ->
    newArray = []
    for item in array
      obj = {}
      obj[key] = item
      newArray.push(obj)
    return newArray

angular.module("app").filter "labelColor", (Helpers) ->
  (labels) ->
    newLabels = Helpers.arrayToObjects(labels, 'name')
    for label in newLabels
      label.color = "#bada55";
    return newLabels
