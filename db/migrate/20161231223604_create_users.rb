class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :Email
      t.string :Password
      t.string :UserName      
      t.timestamps
    end
  end
end
