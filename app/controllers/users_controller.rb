class UsersController < ApplicationController
  def show
    unless User.find(params[:id]) == current_user
      redirect_to root_path
    end
    @articles = current_user.articles
    @users = User.all
  end

  def destroy
    redirect_to root_path if !current_user.adnin?
    @user = User.find(parmas[:id])
    if @user.destroy
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
    current_user.destroy
  end
end
