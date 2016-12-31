class BudgetCategory < ApplicationRecord
  scope :sortedAsc, -> {order("sort ASC")}
  scope :sortedDesc, -> {order("sort DESC")}
  scope :NameAsc, -> {order("Name ASC")}
  scope :NameDesc, -> {order(:Name)}
end
