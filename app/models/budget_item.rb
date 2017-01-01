class BudgetItem < ApplicationRecord
  belongs_to :Budget, optional: true
end
