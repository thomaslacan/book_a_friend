class MomentsController < ApplicationController
  def index
    @moments = Moment.all
  end

  def show
    @moment = Moment.find(params[:id])
  end

  def new
    @moment = Moment.new
  end

  def create
    @moment = Moment.new(moment_params)
    if @moment.save
      redirect_to moment_path(@moment)
    else
      render :new
    end
  end

  def edit

  end

  def update
  end

  def destroy
  end

  private

  def moment_params
    params.require(:moment).permit(:category, :activity, :user_id, :description, :location, :level, :start_time, :end_time)
  end
end
