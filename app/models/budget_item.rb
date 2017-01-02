class BudgetItem < ApplicationRecord
  belongs_to :Budget, optional: true
  belongs_to :BudgetCategory, optional: true
end
