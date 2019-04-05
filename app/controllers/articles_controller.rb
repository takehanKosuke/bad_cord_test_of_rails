class ArticlesController < ApplicationController

  def index
    @articles = Article.all
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
    if @article.save
      redirect_to root_path, flash: { success: 'articleが作成されました' }
    else
      redirect_to root_path, flash: { error: 'articleの作成に失敗しました' }
    end
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
    if @article.destroy
      redirect_to root_path, flash: { success: 'articleが削除されました' }
    else
      redirect_to root_path, flash: { error: 'articleの削除に失敗しました' }
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
end
