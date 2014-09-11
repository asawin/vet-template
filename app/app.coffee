'use strict'

# Declare app level module which depends on filters, and services
app = angular.module('app', [
  'ngAnimate'
  'mgcrea.ngStrap'
  'ui.router'
  'restangular'
  'lodash'  
  'app.templates'
  'modules'
])

app.config(($stateProvider, $urlRouterProvider,$locationProvider)->
  $urlRouterProvider.otherwise("/state1")
  $stateProvider
    .state('login',
    {
      url: "/login",
      templateUrl: "app/partials/login.jade"
      controller: 'MainCtrl'
    })
    .state('state1',
      {
        url: "/state1",
        templateUrl: "app/partials/state1.jade"
      })
    .state('state1.list',
      {
        url: "/list",
        templateUrl: "app/partials/state1.list.jade",
        controller: ($scope) ->
          $scope.items = ["A", "List", "Of", "Items"]
      })
    .state('state2',
      {
        url: "/state2",
        templateUrl: "app/partials/state2.jade"
      })
    .state('state2.list',
      {
        url: "/list",
        templateUrl: "app/partials/state2.list.jade",
        controller: ($scope) ->
          $scope.things = ["A", "Set", "Of", "Things"]
      })
    .state('simpleform', 
      {
        url: '/samples/simpleform'
        templateUrl: "app/samples/simpleform.jade"
      })
    .state('twocolumnform', 
      {
        url: '/samples/2columnform'
        templateUrl: "app/samples/twocolumnform.jade"
      })
    .state('panel', 
      {
        url: '/samples/panel'
        templateUrl: "app/samples/panel.jade"
      })
    .state('callout', 
      {
        url: '/samples/callout'
        templateUrl: "app/samples/callout.jade"
      })
    .state('table', 
      {
        url: '/samples/table'
        templateUrl: "app/samples/table.jade"
      })
    .state('docstation', 
      {
        url: '/docstation'
        templateUrl: "app/doctor/docstation.jade"
      })



  $locationProvider.html5Mode(true)
)
