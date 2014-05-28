FUC.Service.BlackCardSvc = (resource) ->
  @cards = resource '/api/black_cards/:id', {id: '@id'}
  @

FUC.App.service 'BlackCardSvc', ['$resource', FUC.Service.BlackCardSvc]
