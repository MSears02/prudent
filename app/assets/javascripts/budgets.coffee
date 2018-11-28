# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
(->
  BudgetCtrlJs = ['$resource', '$rootScope', '$scope',($resource, $rootScope, $scope) ->    
    
    Budget = $resource("api/budgets", {method: 'GET'})
    @budgets = Budget.query()
    @FirstName = "Matthew"
    @LastName = "Sears"
    return
  ]
  angular
    .module('prudentjs')
    .controller('BudgetCtrlJs', BudgetCtrlJs)
)()
