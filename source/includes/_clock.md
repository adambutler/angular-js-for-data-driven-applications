# Angular in HTML

## Basic (inline-styles)

```html
<input ng-model="color">
<div style="width: 50px; height: 50px; background: {{color}};"></div>
```

<div class="padded">
  <input ng-model="color" placeholder="Enter a colour"><br><br>
  <div style="width: 50px; height: 50px; background: {{color}};"></div>
</div>

## Basic (type)

```html
<input type="text" ng-model="inputType">
<input type="{{inputType}}">
```

<div class="padded">
  <input type="text" ng-model="inputType" placeholder="text/range/color/date"><br><br>
  <input type="{{inputType}}">
</div>

## SVG

### code

```html

<div ng-controller="SvgCtrl" style="width: 300px; height: 300px;">
  <svg viewbox="0 0 100 100" width="100%" height="100%">
     <ellipse
      rx="50" ry="50" cx="50" cy="50" fill="#ecf0f1"
    ></ellipse>

    <rect
      ng-repeat="marker in hourMarkers"
      width="3" height="10" x="48.5" y="1"
      fill="#2c3e50"
      transform="rotate({{marker * 30}} 50 50)"
    ></rect>

    <rect
      ng-repeat="marker in minuteMarkers"
      ng-if="(marker % 5) != 0" width="1.2"
      height="3.6" x="49.4" y="1" fill="#2c3e50"
      transform="rotate({{marker * 6}} 50 50)"
    ></rect>

    <rect id="hours"
      width="5" height="45" x="47.5" y="15" fill="#3498db"
      transform="rotate({{getHours()}} 50 50)"
    ></rect>

    <rect id="minutes"
      width="4" height="54" x="48" y="4" fill="#2980b9"
      transform="rotate({{getMinutes()}} 50 50)"
    ></rect>

    <rect id="seconds" width="1.5" height="50" x="-0.75" y="-37.5"
      fill="{{color}}"
      transform="rotate({{getSeconds()}} 50 50) translate(50 50)"
    ></rect>
  </svg>
</div>
```

```coffeescript
angular.module('app').controller "SvgCtrl", ($scope, $interval) ->

  $scope.date = new Date()
  $scope.hourMarkers = [0..11]
  $scope.minuteMarkers = [0..59]

  $scope.getDegreesForUnit = (unit, totalUnits) ->
    (360/totalUnits)*unit

  $scope.getHours = ->
    $scope.getDegreesForUnit $scope.date.getHours(), 12

  $scope.getMinutes = ->
    $scope.getDegreesForUnit $scope.date.getMinutes(), 60

  $scope.getSeconds = ->
    $scope.getDegreesForUnit $scope.date.getSeconds(), 60

  $interval ->
    $scope.date = new Date()
  , 1000
```

<div ng-controller="SvgCtrl" style="width: 300px; height: 300px;" class="padded">
  <svg viewbox="0 0 100 100" width="100%" height="100%">
     <ellipse rx="50" ry="50" cx="50" cy="50" fill="#ecf0f1"></ellipse>

     <rect ng-repeat="marker in hourMarkers" width="3" height="10" x="48.5" y="1" fill="#2c3e50" transform="rotate({{marker * 30}} 50 50)"></rect>
     <rect ng-repeat="marker in minuteMarkers" ng-if="(marker % 5) != 0" width="1.2" height="3.6" x="49.4" y="1" fill="#2c3e50" transform="rotate({{marker * 6}} 50 50)"></rect>

     <rect id="hours" width="5" height="45" x="47.5" y="15" fill="#3498db" transform="rotate({{getHours()}} 50 50)"></rect>
     <rect id="minutes" width="4" height="54" x="48" y="4" fill="#2980b9" transform="rotate({{getMinutes()}} 50 50)"></rect>
     <rect id="seconds" width="1.5" height="50" x="-0.75" y="-37.5" fill="{{color}}" transform="rotate({{getSeconds()}} 50 50) translate(50 50)"></rect>
  </svg>
</div>
