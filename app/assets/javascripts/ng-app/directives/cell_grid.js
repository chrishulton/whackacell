/* global _ */

function cellGrid($interval, $timeout) {
  return {
    restrict: 'E',
    templateUrl: 'cell_grid.html',
    link: function($scope) {
      var TOTAL_ROUNDS = 10;
      var MOLE_HIT_SCORE = 5;
      var MOLE_MISS_SCORE = 10;
      var TIME_TO_START_SECONDS = 3;

      $scope.score = 0;
      $scope.gameActive = false;
      $scope.roundNumber = 0;
      $scope.totalRounds= TOTAL_ROUNDS;
      $scope.gridSize = 5;

      var getCellIndex = function(row, cell) {
        return row * $scope.gridSize + cell;
      };

      var resetMoles = function() {
        var grid = [];
        _.times(Math.pow($scope.gridSize,2), function() {
          grid.push({
            whacked: false,
            mole: false
          });
        });
        $scope.cells = grid;
      };

      var endGame = function() {
        $scope.roundNumber = 0;
        $scope.gameActive = false;
      }

      var playRound = function() {
        $scope.roundNumber++;
        resetMoles();

        if ($scope.roundNumber > $scope.totalRounds) {
          endGame();
          return;
        }

        var moleDensity = Math.min(
          Math.sqrt($scope.roundNumber) / 10, .6
        );
        var numMoles = parseInt(moleDensity * $scope.cells.length);
        var molesRemaining = numMoles;

        var shuffledMoles = _.shuffle($scope.cells);
        while (molesRemaining > 0 && shuffledMoles) {
          var randomCell = shuffledMoles.pop();
          randomCell.mole = true;
          molesRemaining--;
        }

        //XXX: factor in number of moles and grid size for round length
        var roundTimeMs = Math.max(1500, numMoles * 400 + ($scope.cells.length / 80) * 1000);
        $timeout(playRound, roundTimeMs);
      }

      $scope.gridRange = function() {
        return _.range(0, $scope.gridSize);
      };


      var countDown = function() {
        if ($scope.timeToStartSeconds > 1) {
          $timeout(function() {
            countDown();
            $scope.timeToStartSeconds--;
          }, 1000);
        } else {
          $scope.gameActive = true;
          playRound();
        }
      }

      $scope.startGame = function () {
        $scope.score = 0;
        $scope.roundNumber = 0;

        $scope.timeToStartSeconds = TIME_TO_START_SECONDS;
        countDown();
      };

      $scope.isMole = function(row, cell) {
        return $scope.cells[getCellIndex(row, cell)].mole;
      }

      $scope.isWhacked = function(row, cell) {
        return $scope.cells[getCellIndex(row, cell)].whacked;
      }

      $scope.whackCell = function(row, cell) {
        if (!$scope.gameActive) {
          return;
        }
        var cell = $scope.cells[getCellIndex(row, cell)];
        if (!cell.whacked) {
          cell.whacked = true;
          if (cell.mole) {
            $scope.score += MOLE_HIT_SCORE;
          } else {
            $scope.score -= MOLE_MISS_SCORE;
          }
        }
      }

      $scope.$watch('gridSize', function() {
        resetMoles();
      });

      resetMoles();
    }
  }
}

angular.module('whackacell').directive('cellGrid', cellGrid);
