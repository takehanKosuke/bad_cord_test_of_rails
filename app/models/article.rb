class Article < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true

  delegate :email,
           :name,
           to: :user,
           prefix: true
end
