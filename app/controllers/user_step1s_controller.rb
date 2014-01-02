class UserStep1sController < ApplicationController
  before_action :set_user_step1, only: [:show, :edit, :update, :destroy]

  # GET /user_step1s
  # GET /user_step1s.json
  def index
    @user_step1s = UserStep1.all
  end

  # GET /user_step1s/1
 
 def show
  end
  # GET /user_step1s/new
  def new
    @user_step1 = UserStep1.new
  end

  # GET /user_step1s/1/edit
  def edit
  end

  # POST /user_step1s
  # POST /user_step1s.json
  def create
    @user_step1 = UserStep1.new(user_step1_params)

    respond_to do |format|
      if @user_step1.save
        format.html { redirect_to @user_step1, notice: 'User step1 was successfully created.' }
       
      else
        format.html { render action: 'new' }
       
      end
    end
  end

  # PATCH/PUT /user_step1s/1
  # PATCH/PUT /user_step1s/1.json
  def update
    respond_to do |format|
      if @user_step1.update(user_step1_params)
        format.html { redirect_to @user_step1, notice: 'User step1 was successfully updated.' }
        
      else
        format.html { render action: 'edit' }
       
      end
    end
  end

  # DELETE /user_step1s/1
  # DELETE /user_step1s/1.json
  def destroy
    @user_step1.destroy
    respond_to do |format|
      format.html { redirect_to user_step1s_url }
      
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_step1
      @user_step1 = UserStep1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_step1_params
      params.require(:user_step1).permit(:project_name, :phase_name, :project_urls, :subject_area)
    end
end