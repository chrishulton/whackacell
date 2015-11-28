function cellGrid() {
  return {
    restrict: 'E',
    scope: {
      gridSize: '='
    },
    templateUrl: 'cell_grid.html',
    link: function($scope) {
      $scope.gridArray = _.range(0, $scope.gridSize);

      $scope.$watch('gridSize', function() {
        $scope.gridArray = _.range(0, $scope.gridSize);
      });
    }
  }
}

angular.module('whackacell').directive('cellGrid', cellGrid);
