# Basics

## Data Binding

```html
<input type="text" ng-model="name">

<p>Hello {{name}}</p>
```

<input type="text" ng-model="name">

<p>Hello {{name}}</p>

## Built in Filters

```html
<input type="range" step="0.00001" ng-model="number" value="50">

<p>Unfiltered Number = {{number}}</p>
<p>Filtered Number = {{number | number:0}}</p>
<p>Filtered Number = {{number | currency}}</p>
```

<input type="range" step="0.00001" ng-model="number" value="50">

<p>Unfiltered Number = {{number}}</p>
<p>Filtered Number = {{number | number:0}}</p>
<p>Filtered Number = {{number | currency}}</p>

## Custom Filters

```coffeescript
angular.module("app").filter "reverse", ->
  (text) ->
    return "" unless text?
    return text.split("").reverse().join("")
```

```html
<input type="text" ng-model="reverseText">

{{reverseText | reverse}}
```

<input type="text" ng-model="reverseText">

<p>{{reverseText | reverse}}</p>

## Controllers

```coffeescript
angular.module('app').controller "BasicCtrl", ($scope) ->
  $scope.labels = [
    "Alpha"
    "Bravo"
    "Charlie"
  ]


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

```

```html
<div ng-controller="BasicCtrl">
  <p>{{ labels }}</p>
  <p>{{ labels | labelColor }}</p>
</div>
```

<div ng-controller="BasicCtrl" class="padded">
  <p>{{ labels }}</p>
  <p>{{ labels | labelColor }}</p>
</div>

{{ }}
