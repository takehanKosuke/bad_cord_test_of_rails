class UsersController < ApplicationController
  before_action :same_user?

  def show
    @articles = current_user.articles.includes(:category)
  end

  def destroy
    current_user.destroy
  end

  private
  def same_user?
    unless User.find(params[:id]) == current_user
      redirect_to root_path
    end
  end
end
