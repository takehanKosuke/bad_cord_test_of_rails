class Article < ApplicationRecord
  belongs_to :user

  #なくてもいい気もするけど
  validates :body, presence: true
  validates :title, presence: true
end
