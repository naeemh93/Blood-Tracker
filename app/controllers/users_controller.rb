class UsersController < ApplicationController

  def my_readings
    @readings = current_user.glucose_levels
  end

  def search
    if params[:search_param].blank?
      flash.now[:danger] = "You have entered an empty search string"
    else
      start_date = params["search_param"].split('-').first
      end_date = params["search_param"].split('-').last
      new_start_date = Date.parse(start_date)
      new_end_date = Date.parse(end_date)
      @readings = current_user.glucose_levels.where('created_at BETWEEN ? AND ?', new_start_date.beginning_of_day, new_end_date.end_of_day)
      if @readings.present?
        @max_readings = @readings.maximum(:g_level)
        @min_readings = @readings.minimum(:g_level)
        @average_readings = @readings.average(:g_level)

      end

    end
    respond_to do |format|
      format.js { render partial: 'users/result.js' }
    end
  end



end
