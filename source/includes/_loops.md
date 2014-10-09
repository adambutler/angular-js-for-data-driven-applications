# Loops

<aside>
Android users! Join me on http://angular.com
</aside>

```coffeescript
angular.module('app').controller "DeviceCtrl", ($scope) ->
  $scope.devices = {}
  $scope.presenter = new Presenter('presenter')
  $scope.presenter.on 'connectionData', (data, senderID) ->
    $scope.$apply ->
      $scope.devices[senderID] = data
```

```html
<table ng-controller="DeviceCtrl">
  <thead>
    <th>Name</th>
    <th>Resolution</th>
    <th>Orientation</th>
  </thead>
  <tbody>
    <tr ng-repeat="device in devices">
      <td>{{device.name}}</td>
      <td>{{device.status.resolution}}</td>
      <td>
        <code>&alpha; {{device.status.orientation.alpha || 0 | number:2 }}
        &beta; {{device.status.orientation.beta || 0 | number:2 }}
        &gamma; {{device.status.orientation.gamma || 0 | number:2}}</code>

        <div style="-webkit-perspective: 250; -webkit-perspective-origin: 50% 50%;">
          <div style="
            width: 50px; height: 100px;
            background: #e67e22;
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffd6b2), color-stop(100%,#e67e22));
            margin: 0 auto;
            border: 4px solid rgba(0,0,0,0.5);
            -webkit-transform: rotate3d(1,0,0,{{(device.status.orientation.gamma) * 0.8}}deg)
          "> A </div>
        </div>

        <p>{{(device.status.orientation.gamma)}}</p>

      </td>
    </tr>
  </tbody>
</table>
```

<div ng-controller="DeviceCtrl" class="padded">

  {{test}}

  <table>
    <thead>
      <th>Name</th>
      <th>Resolution</th>
      <th>Orientation</th>
    </thead>
    <tbody>
      <tr ng-repeat="device in devices">
        <td>{{device.name}}</td>
        <td>{{device.status.resolution}}</td>
        <td>
          <code>&alpha; {{device.status.orientation.alpha || 0 | number:2 }}
          &beta; {{device.status.orientation.beta || 0 | number:2 }}
          &gamma; {{device.status.orientation.gamma || 0 | number:2}}</code>

          <div style="-webkit-perspective: 250; -webkit-perspective-origin: 50% 50%;">
            <div style="
              width: 50px; height: 100px;
              background: #e67e22;
              background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffd6b2), color-stop(100%,#e67e22));
              margin: 0 auto;
              border: 4px solid rgba(0,0,0,0.5);
              -webkit-transform: rotate3d(1,0,0,{{(device.status.orientation.gamma) * 0.8}}deg)
            "> A </div>
          </div>

        </td>
      </tr>
    </tbody>
  </table>
</div>


```javascript

var devices = []

devices.push({ name: "Bar" });

```

<ul>
  <li ng-repeat="device in devices">
    Foo
  </li>
</ul>
