class SinnohsController < ApplicationController
  before_action :set_sinnoh, only: [:show, :edit, :update, :destroy]

  # GET /sinnohs
  # GET /sinnohs.json
  def index
    @sinnohs = Sinnoh.all
  end

  # GET /sinnohs/1
  # GET /sinnohs/1.json
  def show
  end

  # GET /sinnohs/new
  def new
    @sinnoh = Sinnoh.new
  end

  # GET /sinnohs/1/edit
  def edit
  end

  # POST /sinnohs
  # POST /sinnohs.json
  def create
    @sinnoh = Sinnoh.new(sinnoh_params)

    respond_to do |format|
      if @sinnoh.save
        format.html { redirect_to @sinnoh, notice: 'Sinnoh was successfully created.' }
        format.json { render :show, status: :created, location: @sinnoh }
      else
        format.html { render :new }
        format.json { render json: @sinnoh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sinnohs/1
  # PATCH/PUT /sinnohs/1.json
  def update
    respond_to do |format|
      if @sinnoh.update(sinnoh_params)
        format.html { redirect_to @sinnoh, notice: 'Sinnoh was successfully updated.' }
        format.json { render :show, status: :ok, location: @sinnoh }
      else
        format.html { render :edit }
        format.json { render json: @sinnoh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sinnohs/1
  # DELETE /sinnohs/1.json
  def destroy
    @sinnoh.destroy
    respond_to do |format|
      format.html { redirect_to sinnohs_url, notice: 'Sinnoh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sinnoh
      @sinnoh = Sinnoh.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sinnoh_params
      params.require(:sinnoh).permit(:name, :type_1, :type_2, :height, :weight, :description)
    end
end
