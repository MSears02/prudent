class CreateBudgetItems < ActiveRecord::Migration[5.0]
  def change
    create_table :budget_items do |t|
      t.float :amount
      t.integer :DueDate, :null => false
      t.date :StartDate, :null => false
      t.date :EndDate
      t.integer :BudgetCategory_id
      t.boolean :IsReocurring, :default => false, :null => false
      t.boolean :IsCollection, :default => false, :null => false
      t.timestamps

    end
    add_index('budget_items', 'BudgetCategory_id')
  end
end
