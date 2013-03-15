FUC.Directive.CardDrtv = ->
  restrict: 'C'
  scope: {cardModel: '=cardModel'}
  compile: (element, attrs) ->
    (scope, element, attrs, ctrl) ->
      scope.$watch 'cardModel', (card) ->
        logo_html = "<div class='logo'>
                    <div class='left-card'></div>
                    <div class='middle-card'></div>
                    <div class='right-card'></div>
                    <div class='logo-text'>Fucked Up Cards</div></div>"
        element.html card.text + logo_html

FUC.App.directive 'card', FUC.Directive.CardDrtv