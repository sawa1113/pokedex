class GalarsController < ApplicationController
  before_action :set_galar, only: [:show, :edit, :update, :destroy]

  # GET /galars
  # GET /galars.json
  def index
    @galars = Galar.all
  end

  # GET /galars/1
  # GET /galars/1.json
  def show
  end

  # GET /galars/new
  def new
    @galar = Galar.new
  end

  # GET /galars/1/edit
  def edit
    @galar = Galar.find(params[:id])
  end

  # POST /galars
  # POST /galars.json
  def create
    @galar = Galar.new(galar_params)

    respond_to do |format|
      if @galar.save
        format.html { redirect_to @galar, notice: 'Galar was successfully created.' }
        format.json { render :show, status: :created, location: @galar }
      else
        format.html { render :new }
        format.json { render json: @galar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galars/1
  # PATCH/PUT /galars/1.json
  def update
    respond_to do |format|
      if @galar.update(galar_params)
        format.html { redirect_to @galar, notice: 'Galar was successfully updated.' }
        format.json { render :show, status: :ok, location: @galar }
      else
        format.html { render :edit }
        format.json { render json: @galar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galars/1
  # DELETE /galars/1.json
  def destroy
    @galar.destroy
    respond_to do |format|
      format.html { redirect_to galars_url, notice: 'Galar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_galar
      @galar = Galar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def galar_params
      params.require(:galar).permit(:name, :type_1, :type_2, :height, :weight, :description, :number, :image)
    end
end
