'use strict'

angular.module("chattingcatApp")
  .config ($stateProvider, $urlRouterProvider, $httpProvider) ->

    view_path = "views/"

    $urlRouterProvider.otherwise("/")

    $stateProvider
      .state "application",
        abstract: true
        views:
          "":
            controller: "ApplicationCtrl"
            templateUrl: view_path + "layouts/application.html"
      .state "home",
        parent: "application"
        url: "/"
        views:
          "":
            controller: "MainCtrl"
            templateUrl: view_path + "main.html"





#    $routeProvider
#    .when '/',
#      templateUrl: 'views/main.html'
#      controller: 'MainCtrl'
#    .otherwise
#        redirectTo: '/'