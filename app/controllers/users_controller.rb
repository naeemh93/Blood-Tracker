class UsersController < ApplicationController



  def my_readings
    @readings = current_user.glucose_levels
  end

  # def search
  #   if params[:search_param].blank?
  #     flash.now[:danger] = "You have entered an empty search string"
  #   else
  #     @users = User.search(params[:search_param])
  #     @users = current_user.except_current_user(@users)
  #     flash.now[:danger] = "No users match this search criteria" if @users.blank?
  #   end
  #   respond_to do |format|
  #     format.js { render partial: '' }
  #   end
  # end



end
