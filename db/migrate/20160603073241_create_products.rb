class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.belongs_to :cart, index: true
      t.string :name
      t.text :description
      t.float :price

      t.timestamps null: false
    end
  end
end
