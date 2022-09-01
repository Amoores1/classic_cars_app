class CarsController < ApplicationController
  def index
    if params[:query].present?
      @cars = Car.search_by_manufacturer_and_model(params[:query])
      if @cars.empty?
        flash.alert = "No cars found matching this search.\nHere are some others."
        @cars = Car.all
      end
    else
      @cars = Car.all
    end
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
    params.require(:car).permit(:manufacturer, :year, :model, :category, :day_price, :user_id, :photo)
  end
end
