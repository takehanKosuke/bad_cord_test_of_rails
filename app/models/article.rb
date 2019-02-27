class Article < ApplicationRecord
  belongs_to :category
  belongs_to :user

  enum status: { open: 1, close: 2 }

  delegate :name,
           to: :category,
           prefix: true

  delegate :email,
           :name,
           to: :user,
           prefix: true

  def self.search_articles(articles, params)
    if params[:category_id]
      articles = articles.where("category_id = ?", params[:category_id])
    end
    articles
  end
end
