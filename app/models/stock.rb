class Stock < ApplicationRecord
    has_many :user_stocks
    has_many :users, through: :user_stocks

    def number_to_currency(amount)
        number_to_currency(amount, :unit => "$", :precision => 2)
    end

end
