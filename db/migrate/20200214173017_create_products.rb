class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.boolean :lowest, default: false, null: false
      t.string :name              # 品名
      t.integer :quantity         # 数量
      t.integer :weight           # 重量
      t.string :quantity          # 単位
      t.integer :price            # 税込金額
      t.integer :non_taxed_price  # 税抜金額
      t.integer :shipping_fee     # 送料
      t.integer :point            # ポイント
      t.integer :sum              # 合計金額
      t.string :store             # ストア
      t.string :url               # URL
      t.text :description         # 備考

      t.timestamps
    end
  end
end
