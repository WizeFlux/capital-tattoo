---
---

CapitalTattoo = angular.module('CapitalTattoo', ['duScroll'], ($interpolateProvider)->
  $interpolateProvider.startSymbol('//')
  $interpolateProvider.endSymbol('//')
).value 'duScrollDuration', 750

CapitalTattoo.controller 'WelcomeController', ['$scope', ($scope)->
]

CapitalTattoo.directive 'shuffle', ['$filter', ($filter)->
  link: (scope, element)->
    pictures = $filter('shuffle')(element.find('div'))
    element.empty()
    element.append pictures
]

CapitalTattoo.filter 'shuffle', ->
  shuffledArr = []
  shuffledLength = 0
  
  (arr)->
    o = arr
    if shuffledLength == arr.length then return shuffledArr
    
    j = undefined
    x = undefined
    i = o.length

    while i
      j = parseInt(Math.random() * i)
      x = o[--i]
      o[i] = o[j]
      o[j] = x
    
    shuffledArr = o
    shuffledLength = o.length
    o