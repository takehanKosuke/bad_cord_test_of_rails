class UsersController < ApplicationController
  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to root_path, flash: { success: 'userが削除されました' }
    else
      redirect_to root_path, flash: { error: 'userの削除に失敗しました' }
    end
  end
end
