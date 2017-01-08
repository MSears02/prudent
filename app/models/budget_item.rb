class BudgetItem < ApplicationRecord
  has_and_belongs_to_many :Budgets, optional: true, :join_table => 'budgets_budget_items'
  belongs_to :BudgetCategory, optional: true
end
