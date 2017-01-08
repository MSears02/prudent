class Budget < ApplicationRecord

has_and_belongs_to_many :BudgetItems, :join_table => 'budgets_budget_items'

end
