class UsersController < ApplicationController
  before_action :same_user?

  def show
    @articles = current_user.articles.includes(:category)
  end

  def destroy
    if current_user.destroy
      redirect_to root_path, flash: { success: 'userが削除されました' }
    else
      redirect_to root_path, flash: { error: 'userの削除に失敗しました' }
    end
  end

  private
  def same_user?
    unless User.find(params[:id]) == current_user
      redirect_to root_path
    end
  end
end
