angular
    .module('whackacell', [
        'ngRoute',
        'ngResource',
        'templates',
        'ngTouch',
        'ui.bootstrap'
    ]).config(function ($routeProvider, $locationProvider) {
        $routeProvider
            .when('/', {
                templateUrl: 'home.html',
                controller: 'HomeCtrl'
            });
        $locationProvider.html5Mode({
          enabled: true,
          requireBase: false
        });
    });
