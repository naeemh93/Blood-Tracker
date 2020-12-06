class GlucoseLevelsController < ApplicationController

  def new
    @glucoselevel = GlucoseLevel.new
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @glucoselevel }
      end
  end

  def create
    @glucoselevel = GlucoseLevel.new(glucose_params)

    @glucoselevel.user_id = current_user.id
    respond_to do |format|

      if @glucoselevel.save
        format.html { redirect_to root_path, notice: 'Glucose was successfully created.' }
        format.json { render json: @glucoselevel, status: :created, location: @glucoselevel }
      else
        format.html { render action: "new" }
        format.json { render json: @glucoselevel.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @glucoselevel = Glucose.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @glucoselevel }
    end
  end
  def destroy
    @glucoselevel = GlucoseLevel.find(params[:id])
    glucoselevel.destroy
    flash[:notice] = "Glucose Level was successfully removed from portfolio"
    redirect_to root_path
  end


  private



  def glucose_params
    params.permit(:g_level, :user_id )
  end

end
