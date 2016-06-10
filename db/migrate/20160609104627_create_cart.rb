class CreateCart < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.string :product_name
      t.float :product_price
    end

    create_table :products do |t|
      t.belongs_to :carts, index: true
    end
  end
  
end
