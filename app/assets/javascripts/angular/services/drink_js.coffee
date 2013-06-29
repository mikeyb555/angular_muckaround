App.factory 'Drink', ['$resource', ($resource) ->
  $resource '/drinks/:id', id: '@id'
]