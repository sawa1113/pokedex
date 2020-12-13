class JohtosController < ApplicationController
  before_action :set_johto, only: [:show, :edit, :update, :destroy]

  # GET /johtos
  # GET /johtos.json
  def index
    @johtos = Johto.all
  end

  # GET /johtos/1
  # GET /johtos/1.json
  def show
  end

  # GET /johtos/new
  def new
    @johto = Johto.new
  end

  # GET /johtos/1/edit
  def edit
  end

  # POST /johtos
  # POST /johtos.json
  def create
    @johto = Johto.new(johto_params)

    respond_to do |format|
      if @johto.save
        format.html { redirect_to @johto, notice: 'Johto was successfully created.' }
        format.json { render :show, status: :created, location: @johto }
      else
        format.html { render :new }
        format.json { render json: @johto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /johtos/1
  # PATCH/PUT /johtos/1.json
  def update
    respond_to do |format|
      if @johto.update(johto_params)
        format.html { redirect_to @johto, notice: 'Johto was successfully updated.' }
        format.json { render :show, status: :ok, location: @johto }
      else
        format.html { render :edit }
        format.json { render json: @johto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /johtos/1
  # DELETE /johtos/1.json
  def destroy
    @johto.destroy
    respond_to do |format|
      format.html { redirect_to johtos_url, notice: 'Johto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_johto
      @johto = Johto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def johto_params
      params.require(:johto).permit(:name, :type_1, :type_2, :height, :weight, :description, :number)
    end
end
