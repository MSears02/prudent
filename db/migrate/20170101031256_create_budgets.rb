class CreateBudgets < ActiveRecord::Migration[5.0]
  def change
    create_table :budgets do |t|
      t.string :Title
      t.float :StartingBalance
      t.float :CurrentBalance
      t.timestamps
    end
  end
end
