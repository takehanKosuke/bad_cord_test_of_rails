class UsersController < ApplicationController

  def show
    redirect_to root_path unless params[:id] == current_user.id
    @articles = current_user.articles
    @users = User.all
  end

  def destroy
    redirect_to root_path if !current_user.admin?
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to root_path, flash: { success: 'userが削除されました' }
    else
      redirect_to root_path, flash: { error: 'userの削除に失敗しました' }
    end
  end
end
