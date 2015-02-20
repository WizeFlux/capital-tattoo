---
---

CapitalTattoo = angular.module 'CapitalTattoo', [], ($interpolateProvider)->
  $interpolateProvider.startSymbol('//')
  $interpolateProvider.endSymbol('//')

CapitalTattoo.controller 'WelcomeController', ['$scope', ($scope)->
]