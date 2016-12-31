class GreetingsController < ApplicationController
	layout = true

  def hello
  	@message = "Testing Getting Ruby App on Heroku"

  	#@bCats = BudgetCategory.sortedAsc
		@bCats = BudgetCategory.sortedAsc

  end
end
