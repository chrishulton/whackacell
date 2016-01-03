// @ngInject
function Score($resource) {
  "use strict";

  return $resource('/scores', {}, {
    index: { method: 'GET', isArray: true}
  });
}

angular.module('whackacell').factory('Score', Score);

