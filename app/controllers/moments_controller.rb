class MomentsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    if params[:query].present?
      @moments = Moment.search_by_activity_and_location(params[:query])
    else
      @moments = Moment.all
    end

    @markers = @moments.map do |moment|
      {
        lat: moment.latitude,
        lng: moment.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def show
    @booking = Booking.new
    @moment = Moment.find(params[:id])
    @bookings = Booking.where(moment_id: @moment.id)
    @formatted_start = DateTime.parse(@moment.start_time).strftime('%d %b at %H:%M')
    @formatted_end = DateTime.parse(@moment.end_time).strftime('%d %b at %H:%M')

    @moments = Moment.where.not(latitude: nil, longitude: nil)

    @markers = [{
        lat: @moment.latitude,
        lng: @moment.longitude#,
      }]
  end

  def new
    @moment = Moment.new
  end

  def create
    @moment = Moment.new(moment_params)
    @moment.user = current_user
    if @moment.save
      redirect_to moment_path(@moment)
    else
      render :new
    end
  end

  def edit
    @user = current_user
    @moment = Moment.find(params[:id])
    if @moment.user == @user
      return @moment
    else
      render :show
    end
  end

  def update
    @moment = Moment.find(params[:id])
    @moment.update(moment_params)
    redirect_to moment_path(@moment)
  end

  def destroy
    @moment = Moment.find(params[:id])
    if @moment.user == current_user
      @moment.destroy
      redirect_to moments_path
    else
    render "new"
    end
  end

  private

  def moment_params
    params.require(:moment).permit(:category, :activity, :user_id, :description, :location, :level, :start_time, :end_time)
  end
end
