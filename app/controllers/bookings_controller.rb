class BookingsController < ApplicationController
  before_action :set_params, only: [:show]
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(@booking_params)
    redirect_to bookings_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_params
  @booking_params = params.require(:booking).permit(:moment_id, :user_id, :description)
  end
end
