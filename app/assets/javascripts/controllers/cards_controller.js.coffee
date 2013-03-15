FUC.Controller.CardsCtrl = (scope, blackCardSvc, whiteCardSvc)->
  queryWhiteCards = ->
    whiteCardSvc.cards.query (data) ->
      scope.whiteCards = data
      scope.randomSet()

  blackCardSvc.cards.query (data) ->
    scope.blackCards = data
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
    blanks = scope.black.text.match(/_{10}/g)
    answerCount = if blanks then blanks.length else 1
    scope.randomWhites answerCount

FUC.Controller.CardsCtrl.$inject = ['$scope', 'BlackCardSvc', 'WhiteCardSvc']