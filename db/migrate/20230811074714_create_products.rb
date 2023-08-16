class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :sku
      t.decimal :price, precision: 10, scale: 2 # Add precision and scale options here

      t.timestamps
    end
  end
end
