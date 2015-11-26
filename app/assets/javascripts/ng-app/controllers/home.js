// @ngInject
function HomeCtrl($scope) {
  $scope.test = "working";
}

angular.module('whackacell').controller('HomeCtrl', HomeCtrl);
