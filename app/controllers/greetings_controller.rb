class GreetingsController < ApplicationController
	layout = false;

  def hello
  	@message = "Testing Getting Ruby App on Heroku"

  	@bCats = BudgetCategory.all()

  end
end
