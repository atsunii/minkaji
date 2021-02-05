class HouseWorksController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_house_work, only: [:show]

  def index
    @house_works = HouseWork.all.order("created_at DESC")
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

  def show
  end

  private

  def house_work_params
    params.require(:house_work).permit(:date, :clean_id, :towel_id, :garbage_id, :score_id).merge(user_id: current_user.id)
  end

  def set_house_work
    @house_work = HouseWork.find(params[:id])
  end
  
end
