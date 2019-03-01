class UsersController < ApplicationController
  def show
    unless User.find(params[:id]) == current_user
      redirect_to root_path
    end
    @articles = current_user.articles.includes(:category)
  end

  def destroy
    unless User.find(params[:id]) == current_user
      redirect_to root_path
    end
    current_user.destroy
  end
end
