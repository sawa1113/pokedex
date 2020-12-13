class AlolasController < ApplicationController
  before_action :set_alola, only: [:show, :edit, :update, :destroy]

  # GET /alolas
  # GET /alolas.json
  def index
    @alolas = Alola.all
  end

  # GET /alolas/1
  # GET /alolas/1.json
  def show
  end

  # GET /alolas/new
  def new
    @alola = Alola.new
  end

  # GET /alolas/1/edit
  def edit
  end

  # POST /alolas
  # POST /alolas.json
  def create
    @alola = Alola.new(alola_params)

    respond_to do |format|
      if @alola.save
        format.html { redirect_to @alola, notice: 'Alola was successfully created.' }
        format.json { render :show, status: :created, location: @alola }
      else
        format.html { render :new }
        format.json { render json: @alola.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alolas/1
  # PATCH/PUT /alolas/1.json
  def update
    respond_to do |format|
      if @alola.update(alola_params)
        format.html { redirect_to @alola, notice: 'Alola was successfully updated.' }
        format.json { render :show, status: :ok, location: @alola }
      else
        format.html { render :edit }
        format.json { render json: @alola.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alolas/1
  # DELETE /alolas/1.json
  def destroy
    @alola.destroy
    respond_to do |format|
      format.html { redirect_to alolas_url, notice: 'Alola was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alola
      @alola = Alola.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alola_params
      params.require(:alola).permit(:name, :type_1, :type_2, :height, :weight, :description, :number)
    end
end
