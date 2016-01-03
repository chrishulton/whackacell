// @ngInject
function HomeCtrl($scope, Score) {
  $scope.scores = Score.index();
}

angular.module('whackacell').controller('HomeCtrl', HomeCtrl);
