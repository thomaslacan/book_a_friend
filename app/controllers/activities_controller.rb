class ActivitiesController < ApplicationController
  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to activity_path(@activity)
    else
      render "activities/new"
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :category, :description)
  end
end
