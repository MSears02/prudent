class GreetingsController < ApplicationController
	layout = true

  def hello
  	@message = "Testing Getting Ruby App on Heroku"

  	@bCats = BudgetCategory.all()

  end
end
