# Actions

```coffeescript
angular.module('app').controller "ActionsCtrl", ($scope) ->

  $scope.counter = 0

  $scope.add = (qty = 1) ->
    $scope.counter += qty
```

```html
<div ng-controller="ActionsCtrl">

  {{counter}}

  <p ng-show="counter % 2 == 0">Even</p>
  <p ng-hide="counter % 2 == 0">Odd</p>

  <button ng-click="add()">Add</button>
  <button ng-click="add(10)">Add Many</button>

</div>
```

<div ng-controller="ActionsCtrl" class="padded">

  <span style="font-size: 68px;">{{counter}}</span>

  <p ng-show="counter % 2 == 0">Even</p>
  <p ng-hide="counter % 2 == 0">Odd</p>

  <br>

  <button ng-click="add()">Add</button>
  <button ng-click="add(10)">Add Many</button>

</div>

##
