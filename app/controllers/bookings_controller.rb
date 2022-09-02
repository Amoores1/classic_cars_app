class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
    # @car = Car.find(params[:id])
    # @bookings = Booking.where(car: @car)
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to bookings_path(@booking)
  end

  def new
    @booking = Booking.new
    @car = Car.find(params[:car_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.user = current_user
    @booking.car = @car
    @booking.save!
    # redirect_to car_bookings_path(@booking.car)
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:total_price, :start_date, :end_date, :user_id, :car_id)
  end

end
