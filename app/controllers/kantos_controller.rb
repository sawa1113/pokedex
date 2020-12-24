class KantosController < ApplicationController
  before_action :set_kanto, only: [:show, :edit, :update, :destroy]

  # GET /kantos
  # GET /kantos.json
  def index
    @kantos = Kanto.all
  end

  # GET /kantos/1
  # GET /kantos/1.json
  def show
  end

  # GET /kantos/new
  def new
    @kanto = Kanto.new
  end

  # GET /kantos/1/edit
  def edit
    @kanto = Kanto.find(params[:id])
  end

  # POST /kantos
  # POST /kantos.json
  def create
    @kanto = Kanto.new(kanto_params)

    respond_to do |format|
      if @kanto.save
        format.html { redirect_to @kanto, notice: 'Kanto was successfully created.' }
        format.json { render :show, status: :created, location: @kanto }
      else
        format.html { render :new }
        format.json { render json: @kanto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kantos/1
  # PATCH/PUT /kantos/1.json
  def update
    respond_to do |format|
      if @kanto.update(kanto_params)
        format.html { redirect_to @kanto, notice: 'Kanto was successfully updated.' }
        format.json { render :show, status: :ok, location: @kanto }
      else
        format.html { render :edit }
        format.json { render json: @kanto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kantos/1
  # DELETE /kantos/1.json
  def destroy
    @kanto.destroy
    respond_to do |format|
      format.html { redirect_to kantos_url, notice: 'Kanto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kanto
      @kanto = Kanto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kanto_params
      params.require(:kanto).permit(:name, :type_1, :type_2, :height, :weight, :description, :number, :image)
    end
end
