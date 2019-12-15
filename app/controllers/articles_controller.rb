class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]
  before_action :auth_check, only: %i[update destroy]

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
    @article = @current_user.create! article_params
    redirect_to root_path
  rescue
    #error handling
  end

  def edit
  end

  def update
    @article.update! article_params
    redirect_to root_path
  rescue
    #error handling
  end

  def destroy
    @article.destroy!
    redirect_to root_path
  end

  private
  def article_params
    params.require(:article).permit(
      :title,
      :body,
    )
  end

  def set_article(id)
    @article = Article.find id
  end

  def auth_check
    return redirect_to root_path, flash: { error: 'invalid access' } unless @article.user == current_user
  end
end
