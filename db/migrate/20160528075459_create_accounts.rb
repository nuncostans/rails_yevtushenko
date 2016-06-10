class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :age
      t.timestamps null: false
    end

    create_table :carts do |t|
      t.belongs_to :accounts, index: true
      t.string :account_id
      t.timestamps null: false
    end
  end
end
