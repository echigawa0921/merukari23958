class CreditCard < ApplicationRecord
    belongs_to :user
    validates :customer_id, presence: true
    validates :user_id, presence: true
    validates :card_id, presence: true
  end