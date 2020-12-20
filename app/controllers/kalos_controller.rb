class KalosController < ApplicationController
  before_action :set_kalo, only: [:show, :edit, :update, :destroy]

  # GET /kalos
  # GET /kalos.json
  def index
    @kalos = Kalo.all
  end

  # GET /kalos/1
  # GET /kalos/1.json
  def show
  end

  # GET /kalos/new
  def new
    @kalo = Kalo.new
  end

  # GET /kalos/1/edit
  def edit
    @kalo = Kalo.find(params[:id])
  end

  # POST /kalos
  # POST /kalos.json
  def create
    @kalo = Kalo.new(kalo_params)

    respond_to do |format|
      if @kalo.save
        format.html { redirect_to @kalo, notice: 'Kalo was successfully created.' }
        format.json { render :show, status: :created, location: @kalo }
      else
        format.html { render :new }
        format.json { render json: @kalo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kalos/1
  # PATCH/PUT /kalos/1.json
  def update
    respond_to do |format|
      if @kalo.update(kalo_params)
        format.html { redirect_to @kalo, notice: 'Kalo was successfully updated.' }
        format.json { render :show, status: :ok, location: @kalo }
      else
        format.html { render :edit }
        format.json { render json: @kalo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kalos/1
  # DELETE /kalos/1.json
  def destroy
    @kalo.destroy
    respond_to do |format|
      format.html { redirect_to kalos_url, notice: 'Kalo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kalo
      @kalo = Kalo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kalo_params
      params.require(:kalo).permit(:name, :type_1, :type_2, :height, :weight, :description, :number, :image)
    end
end
