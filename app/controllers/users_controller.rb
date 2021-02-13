class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @house_works = current_user.house_works
  end
end