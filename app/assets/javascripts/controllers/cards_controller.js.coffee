FUC.Controller.CardsCtrl = (scope, http, blackCardSvc, whiteCardSvc)->
  queryWhiteCards = ->
    options =
      url: '/api/white_cards'
      method: 'get'

    http(options).then (response) ->
      scope.whiteCards = response.data
      scope.randomSet()

  blkOptions =
    url: '/api/black_cards'
    method: 'get'

  http(blkOptions).then (response) ->
    scope.blackCards = response.data
    queryWhiteCards()

  randomIndex = (array) ->
    Math.floor(Math.random() * array.length)

  scope.randomBlack = ->
    scope.black = scope.blackCards[randomIndex scope.blackCards]

  scope.randomWhite = ->
    scope.white = scope.whiteCards[randomIndex scope.whiteCards]

  scope.randomWhites = (count) ->
    scope.whites = []
    for i in [1..count]
      scope.whites.push scope.randomWhite()

  scope.randomSet = ->
    scope.randomBlack()
    blanks = scope.black.text.match(/_+/g)
    answerCount = if blanks then blanks.length else 1
    scope.randomWhites answerCount

FUC.Controller.CardsCtrl.$inject = ['$scope', '$http', 'BlackCardSvc', 'WhiteCardSvc']
