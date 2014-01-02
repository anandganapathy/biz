class TransLayoutsController < ApplicationController
  before_action :set_trans_layout, only: [:show, :edit, :update, :destroy]

  # GET /trans_layouts
  # GET /trans_layouts.json
  def index
    @trans_layouts = TransLayout.all
  end

  # GET /trans_layouts/1
  # GET /trans_layouts/1.json
  def show
  end

  # GET /trans_layouts/new
  def new
    @trans_layout = TransLayout.new
  end

  # GET /trans_layouts/1/edit
  def edit
  end

  # POST /trans_layouts
  # POST /trans_layouts.json
  def create
    @trans_layout = TransLayout.new(trans_layout_params)

    respond_to do |format|
      if @trans_layout.save
        format.html { redirect_to @trans_layout, notice: 'Trans layout was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /trans_layouts/1
  # PATCH/PUT /trans_layouts/1.json
  def update
    respond_to do |format|
      if @trans_layout.update(trans_layout_params)
        format.html { redirect_to @trans_layout, notice: 'Trans layout was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /trans_layouts/1
  # DELETE /trans_layouts/1.json
  def destroy
    @trans_layout.destroy
    respond_to do |format|
      format.html { redirect_to trans_layouts_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trans_layout
      @trans_layout = TransLayout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trans_layout_params
      params[:trans_layout]
    end
end
