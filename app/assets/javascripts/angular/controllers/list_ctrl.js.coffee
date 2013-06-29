App.controller 'ListCtrl', ['$scope', 'Drink', ($scope, Drink) ->
  ##$scope.drinks = [{_id:1, name:'Pina Colada', video_url: "YaQEaf92z00"},{_id:2, name:'Rum and Coke', video_url: "mHYDjO1DgGA"}, {_id:3, name:'Bloody Mary', video_url: "Alt-ehDc3fc"} ]
  $scope.drinks = Drink.query()
  $scope.selectedDrink = null
  $scope.selected = false


  $scope.showDrink = (drink) ->
    $scope.selectedDrink = drink
    $scope.selected = true
]