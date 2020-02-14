class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :store
      t.integer :price
      t.integer :non_taxed_price
      t.integer :shipping_fee
      t.integer :point
      t.integer :payment
      t.text :description

      t.timestamps
    end
  end
end
