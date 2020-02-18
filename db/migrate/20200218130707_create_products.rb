class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.boolean :lowest
      t.string :name
      t.integer :quantity
      t.integer :weight
      t.string :unit
      t.integer :price
      t.integer :non_taxed_price
      t.integer :shipping_fee
      t.integer :point
      t.integer :sum
      t.string :store
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
