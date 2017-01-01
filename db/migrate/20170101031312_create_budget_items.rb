class CreateBudgetItems < ActiveRecord::Migration[5.0]
  def change
    create_table :budget_items do |t|
      t.float :amount
      t.integer :DueDates, :null => false, array: true
      t.date :StartDate, :null => false
      t.date :EndDate
      t.boolean :IsBill, :default => true, :null => false

      t.timestamps
    end
  end
end
