class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @users = User.all
    @house_works = HouseWork.all
    @total_score = @house_works.sum(:score_id)
  end

  def show
    user = User.find(params[:id])
    @house_works = current_user.house_works
  end
end