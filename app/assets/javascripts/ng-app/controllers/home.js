// @ngInject
function HomeCtrl($scope, Score) {
  "use strict";

  function loadHighScores() {
    $scope.scores = Score.index();
  }

  $scope.$on('scoresUpdated', loadHighScores);

  loadHighScores();
}

angular.module('whackacell').controller('HomeCtrl', HomeCtrl);

// TODO
// FIXME
// TODO
// FIXME
// TODO
// FIXME
// TODO
// FIXME
// TODO
// FIXME
