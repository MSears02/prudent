class CreateBudgetCategories < ActiveRecord::Migration[5.0]
  def up
    create_table :budget_categories do |t|
    	t.string "Name"
      t.boolean :IsDebit, :default => true, :null => false
      t.integer :sort
      t.timestamps
    end
  end

  def down
  	drop_table :budget_categories
  end
end
