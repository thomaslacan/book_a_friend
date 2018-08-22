class MomentsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @moments = Moment.all
  end

  def show
    @moment = Moment.find(params[:id])
    @formatted_start = DateTime.parse(@moment.start_time).strftime('%A %d %B at %H:%M')
    @formatted_end = DateTime.parse(@moment.end_time).strftime('%A %d %B at %H:%M')
  end

  def new
    @moment = Moment.new
  end

  def create
    @moment = Moment.new(moment_params)
    @moment.user = current_user
    @string_photo_url = @moment.category.downcase
    @string_photo_url << ".jpg"
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
