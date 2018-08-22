class BookingsController < ApplicationController
  before_action :set_params, only: [:show]
  def index
    @bookings = Booking.where(moment_id: params[:moment_id].to_i)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @moment = Moment.find(params[:moment_id])
    @booking = Booking.new
  end

  def create
    @moment = Moment.find(params[:moment_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.moment = @moment
    @booking.save
    redirect_to moment_path(@moment)
  end

  def edit
  end

  def update
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_path(current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:moment_id, :user_id, :description)
  end
end
