class CreateCart < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.references :account
      t.float :price
    end
  end
end
