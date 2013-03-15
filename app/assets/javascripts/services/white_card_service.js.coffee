FUC.Service.WhiteCardSvc = (resource) ->
  @cards = resource '/api/white_cards/:id', {id: '@id'}

FUC.App.service 'WhiteCardSvc', ['$resource', FUC.Service.WhiteCardSvc]