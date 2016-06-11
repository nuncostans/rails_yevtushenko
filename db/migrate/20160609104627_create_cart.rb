class CreateCart < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.references :account, index: true
    end
  end
end
