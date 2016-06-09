class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :age
      t.timestamps null: false
    end
    
    add_index :accounts
    add_reference :carts, :accounts, index: true
  end
end
