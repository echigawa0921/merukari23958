class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_many :items ,dependent: :destroy
  has_many :orders ,dependent: :destroy

         validates :nickname,:birthday, presence: true
         validates :first_name,:last_name, presence: true, format: {with: /\A[ぁ-んァ-ン一-龥]/} 
         validates :first_name_kana,:last_name_kana, presence: true, format:{with: /\A[ァ-ヶー－]+\z/}
         validates :password, presence: true, format:{with:/\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i}
end
