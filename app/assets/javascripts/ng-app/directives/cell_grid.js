function cellGrid() {
  return {
    restrict: 'E',
    scope: {
      gridSize: '='
    },
    templateUrl: 'cell_grid.html',
    link: function($scope) {
      var getCellIndex = function(row, cell) {
        return row * $scope.gridSize + cell;
      };

      var populateMoles = function() {
        var grid = [];
        for (var i =0; i < $scope.gridSize * $scope.gridSize; ++i) {
          grid.push({
            whacked: false,
            mole: false
          });
        }
        $scope.cells = grid;
      };

      $scope.gridArray = _.range(0, $scope.gridSize);
      $scope.cells = populateMoles();

      $scope.isWhacked = function(row, cell) {
        return $scope.cells[getCellIndex(row, cell)].whacked;
      }

      $scope.whackCell = function(row, cell) {
        var index = getCellIndex(row, cell);
        $scope.cells[index].whacked = true;
      }

      $scope.$watch('gridSize', function() {
        $scope.gridArray = _.range(0, $scope.gridSize);
        populateMoles();
      });
    }
  }
}

angular.module('whackacell').directive('cellGrid', cellGrid);
