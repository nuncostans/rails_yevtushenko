class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.timestamps null: false
    end
    add_reference :products, :cart, index: true
  end
end
