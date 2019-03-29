class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def search
    @articles = Article.where("title LIKE '%"+params[:title]+"%'")
  end

  def show
    @article = Article.find(params[:id])
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
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to root_path
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path
  end

  private
  def article_params
    params.require(:article).permit(
      :title,
      :body,
      :user_id,
    )
  end

end
