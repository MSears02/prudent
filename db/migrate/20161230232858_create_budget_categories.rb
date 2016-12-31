class CreateBudgetCategories < ActiveRecord::Migration[5.0]
  def up
    create_table :budget_categories do |t|
    	t.string "Name"
      	t.timestamps
    end
  end

  def down 
  	drop_table :CreateBudgetCategories
  end
end
