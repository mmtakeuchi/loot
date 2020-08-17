class Stock < ApplicationRecord
    belongs_to :stocks_users
    has_many :users, through: :stocks_users
end
