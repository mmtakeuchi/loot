class CreateUserStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_stocks do |t|
      t.integer :user_id
      t.integer :stock_id
    end
  end
end
