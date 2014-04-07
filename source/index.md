---
title: API Reference

language_tabs:
  - html
  - javascript

toc_footers:
  - <a href='#'>Sign Up for a Developer Key</a>
  - <a href='http://github.com/tripit/slate'>Documentation Powered by Slate</a>

includes:

---

# Test


```html
<ul>
  <li ng-repeat="device in devices">
    {{device.name}}
  </li>
</ul>
```

<div ng-controller="deviceCtrl">
  <table>
    <thead>
      <th>Type</th>
      <th>Resolution</th>
      <th>Orientation</th>
    </thead>
    <tbody>
      <tr ng-repeat="device in devices">
        <td>{{device.type}}</td>
        <td>{{device.resolution}}</td>
        <td>
          <code>&alpha; {{device.orientation.alpha || 0 | number:2 }}
          &beta; {{device.orientation.beta || 0 | number:2 }}
          &gamma; {{device.orientation.gamma || 0 | number:2}}</code>
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
