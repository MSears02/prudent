class HomeController < ApplicationController

  layout = true

  def index
    @Welcome = 'The Future of Your Finances!'

    @BCats = BudgetCategory.sortedAsc
  end
end
