// @ngInject
function HomeCtrl($scope) {
  $scope.gridSize = 5;
}

angular.module('whackacell').controller('HomeCtrl', HomeCtrl);
