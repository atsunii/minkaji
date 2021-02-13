class HouseWorksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_house_work, only: [:edit, :update, :destroy]
  before_action :redirect, only: [:edit, :update, :destroy]

  def index
    @house_works = HouseWork.all.order('created_at DESC')
    @total_score = @house_works.sum(:score_id)
  end

  def new
    @house_works = HouseWork.new
  end

  def create
    @house_works = HouseWork.new(house_work_params)
    if @house_works.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @house_work.update(house_work_params)
      redirect_to "/users/#{current_user.id}"
    else
      render :edit
    end
  end

  def destroy
    @house_work.destroy
    redirect_to "/users/#{current_user.id}"
  end


  private

  def house_work_params
    params.require(:house_work).permit(:date, :clean_id, :towel_id, :garbage_id, :score_id).merge(user_id: current_user.id)
  end

  def set_house_work
    @house_work = HouseWork.find(params[:id])
  end

  def redirect
    redirect_to :root unless @house_work.user == current_user
  end
  
end
