class ArticlesController < ApplicationController
  before_action :set_article, only: [ :show, :edit, :update, :destroy]
  before_action :check_correct_user, only: [ :edit, :update, :destroy]

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
    if @article.save(article_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @article.update(article_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    if @article.destroy
      redirect_to root_path, flash: { success: 'userが削除されました' }
    else
      redirect_to root_path, flash: { error: 'userの削除に失敗しました' }
    end
  end

  private
  def article_params
    params.require(:article).permit(
      :title,
      :body,
      :user_id
    )
  end

  def set_article
    @article = Article.find(params[:id])
  end

  def check_correct_user
    @article = Article.find(params[:id])
    redirect_to root_path, flash: { error: '不正なアクセスです' } unless @article.user == current_user
  end
end
