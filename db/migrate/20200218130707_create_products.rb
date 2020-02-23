class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.boolean :lowest, default: false, null: false  # 最安値
      t.string :name              # 品名
      t.integer :quantity         # 数量
      t.float :weight             # 重量
      t.string :unit              # 単位
      t.float :non_taxed_price    # 税抜金額
      t.float :price              # 税込金額
      t.integer :shipping_fee     # 送料
      t.integer :point            # ポイント
      t.float :avarage_sum_price  # 平均値での合計金額
      t.float :sum_price          # 合計金額
      t.string :store             # ストア
      t.string :url               # URL
      t.text :description         # 備考

      t.timestamps
    end
  end
end
