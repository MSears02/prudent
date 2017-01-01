class GreetingsController < ApplicationController
	layout = true

  def hello
  	@message = "Creating something bigger than myself"

  	#@bCats = BudgetCategory.sortedAsc
		@bCats = BudgetCategory.sortedAsc

  end
end
