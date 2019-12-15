class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]

  def index
    @articles = Article.all
  end

  def show
    @article.pv += 1
    @article.save
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to root_path
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to root_path
  end

  def destroy
    @article.destroy
    redirect_to root_path
  end

  private
  def article_params
    params.require(:article).permit(
      :title,
      :body,
      :user_id
    )
  end

  def set_article(id)
    @article = Article.find id
  end
end
