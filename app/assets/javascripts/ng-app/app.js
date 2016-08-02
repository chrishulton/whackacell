angular
    .module('whackacell', [
        'ngRoute',
        'ngResource',
        'templates',
        'ngTouch',
        'ui.bootstrap'
    ]).config(function ($routeProvider, $locationProvider, $httpProvider) {
        $routeProvider
            .when('/', {
                templateUrl: 'home.html',
                controller: 'HomeCtrl'
            });
        $locationProvider.html5Mode({
          enabled: true,
          requireBase: false
        });

        $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
    });
