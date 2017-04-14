// @ngInject
function Score($resource) {
  "use strict";

  return $resource('/api/v1/scores', {}, {
    index: { method: 'GET', isArray: true},
    create: { method: 'POST' },
  });
}

//TODO

//FIXME

//TODO

// TODO

angular.module('whackacell').factory('Score', Score);
