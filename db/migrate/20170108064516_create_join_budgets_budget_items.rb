class CreateJoinBudgetsBudgetItems < ActiveRecord::Migration[5.0]
  def change
    create_table :budgets_budget_items, :id => false do |t|
      t.integer 'budget_id'
      t.integer 'BudgetItem_id'
    end
    add_index('budgets_budget_items', ['budget_id','BudgetItem_id'])
  end
end
