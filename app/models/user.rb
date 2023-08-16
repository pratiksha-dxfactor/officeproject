class User < ApplicationRecord
    has_many :user_payments
    has_many :user_addresses
    has_many :cart_items
end
