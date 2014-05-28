window.FUC =
  App: angular.module('FUC', ['ngResource']).config(['$httpProvider', (provider) ->
      provider.defaults.headers.common['Content-Type'] = 'application/json'
    ])
  Controller: {}
  Directive: {}
  Service: {}
