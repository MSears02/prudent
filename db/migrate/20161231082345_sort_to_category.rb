class SortToCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :budget_categories, :sort, :integer 
  end
end
