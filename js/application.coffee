---
---

CapitalTattoo = angular.module('CapitalTattoo', ['duScroll'], ($interpolateProvider)->
  $interpolateProvider.startSymbol('//')
  $interpolateProvider.endSymbol('//')
).value 'duScrollDuration', 750

CapitalTattoo.controller 'WelcomeController', ['$scope', ($scope)->
]