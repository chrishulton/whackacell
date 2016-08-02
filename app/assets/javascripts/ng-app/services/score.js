// @ngInject
function Score($resource) {
  "use strict";

  return $resource('/api/v1/scores', {}, {
    index: { method: 'GET', isArray: true},
    create: { method: 'POST' },
  });
}

angular.module('whackacell').factory('Score', Score);
