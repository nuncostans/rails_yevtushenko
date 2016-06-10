class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :age
      t.timestamps null: false
    end

#    add_index :carts
#    add_reference :accounts, :cart, index: true
  end
end
