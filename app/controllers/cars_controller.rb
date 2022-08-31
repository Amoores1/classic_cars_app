class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  # def create
  #   @car = Car.new(car_params)
  #   if @car.save
  #     redirect_to car_path
  #   else
  #     render :new
  #   end
  # end

  def create
    @car = Car.new(car_params)
    # @car = Car.find(params[:car_id])
    @car.user = current_user
    @car.save!
    redirect_to cars_path
  end

  private

  def car_params
    params.require(:car).permit(:manufacturer, :year, :model, :category, :day_price, :user_id)
  end
end
