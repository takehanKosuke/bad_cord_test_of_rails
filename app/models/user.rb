class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

# TODO: アソシエーションを削除すること
  has_many :articles, dependent: :destroy

  validates :name, presence: true

  enum role: { normal: 1, admin: 2 }
end
