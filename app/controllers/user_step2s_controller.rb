class UserStep2sController < ApplicationController
  before_action :set_user_step2, only: [:show, :edit, :update, :destroy]

  # GET /user_step2s
  # GET /user_step2s.json
  def index
    @user_step2s = UserStep2.all
  end

  # GET /user_step2s/1
  # GET /user_step2s/1.json
  def show
  end

  # GET /user_step2s/new
  def new
    @user_step2 = UserStep2.new
  end

  # GET /user_step2s/1/edit
  def edit
  end

  # POST /user_step2s
  # POST /user_step2s.json
  def create
    @user_step2 = UserStep2.new(user_step2_params)

    respond_to do |format|
      if @user_step2.save
        format.html { redirect_to @user_step2, notice: 'User step2 was successfully created.' }
        
      else
        format.html { render action: 'new' }
       
      end
    end
  end

  # PATCH/PUT /user_step2s/1
  # PATCH/PUT /user_step2s/1.json
  def update
    respond_to do |format|
      if @user_step2.update(user_step2_params)
        format.html { redirect_to @user_step2, notice: 'User step2 was successfully updated.' }
        
      else
        format.html { render action: 'edit' }
        
      end
    end
  end

  # DELETE /user_step2s/1
  # DELETE /user_step2s/1.json
  def destroy
    @user_step2.destroy
    respond_to do |format|
      format.html { redirect_to user_step2s_url }
     
    end
  end



 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_step2
      @user_step2 = UserStep2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_step2_params
      params.require(:user_step2).permit(:source_type, :source_location, :data, :source_info)
    end
  
end
