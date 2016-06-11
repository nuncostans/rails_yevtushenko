class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.references :friend, index: true
      t.string :name
      t.integer :age
      t.timestamps null: false
    end
  end
end
