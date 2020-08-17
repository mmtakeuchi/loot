class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :name
      t.string :ticker
      t.decimal :cost
      t.decimal :shares
      t.decimal :price
      t.integer :market_cap
      t.integer :volume
      t.decimal :avg_volume
      t.decimal :pe_ratio
      t.decimal :open
      t.decimal :previouse_close
      t.decimal :dollar_change
      t.decimal :percent_change
      t.decimal :ytd_change
      t.decimal :high
      t.decimal :low
      t.decimal :week_52_high
      t.decimal :week_52_low

      t.timestamps
    end
  end
end
