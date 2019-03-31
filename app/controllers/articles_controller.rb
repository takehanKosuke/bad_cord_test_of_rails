class ArticlesController < ApplicationController
  before_action :article_author, only: %i[edit update destroy]

  def index
    @articles = Article.all.includes(:user)
  end
  
  def show
    @article = Article.find(params[:id])
    Article.increment_pv(@article)
  end

  def new
    @article = current_user.articles.new
  end

  def create
    @article = current_user.articles.new(article_params)
    if @article.save
      redirect_to @article, flash: { success: 'articleが作成されました' }
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to @article, flash: { success: 'articleが更新されました' }
    else
      render :edit
    end
  end

  def destroy
    if @article.destroy
      redirect_to root_path, flash: { success: 'articleが削除されました' }
    else
      redirect_to root_path, flash: { error: 'articleの削除に失敗しました' }
    end
  end

  private
  def article_author
    @article = current_user.articles.find(params[:id])
  end

  def article_params
    params.require(:article).permit(
      :title,
      :body,
    )
  end
end
