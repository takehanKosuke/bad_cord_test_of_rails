class Article < ApplicationRecord
  belongs_to :user

  validates :body, presence: true
  validates :title, presence: true
end