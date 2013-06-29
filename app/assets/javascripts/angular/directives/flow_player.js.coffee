App.directive 'flowPlayer', ->
  (scope, element, attrs) ->


    scope.$watch 'selectedDrink', (drink) ->
      if drink

        # See http://flowplayer.org/docs/
        element.flowplayer
          playlist: [[mp4: drink.video_url]]
          ratio: 9 / 14