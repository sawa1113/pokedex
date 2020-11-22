class UnovasController < ApplicationController
  before_action :set_unova, only: [:show, :edit, :update, :destroy]

  # GET /unovas
  # GET /unovas.json
  def index
    @unovas = Unova.all
  end

  # GET /unovas/1
  # GET /unovas/1.json
  def show
  end

  # GET /unovas/new
  def new
    @unova = Unova.new
  end

  # GET /unovas/1/edit
  def edit
  end

  # POST /unovas
  # POST /unovas.json
  def create
    @unova = Unova.new(unova_params)

    respond_to do |format|
      if @unova.save
        format.html { redirect_to @unova, notice: 'Unova was successfully created.' }
        format.json { render :show, status: :created, location: @unova }
      else
        format.html { render :new }
        format.json { render json: @unova.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unovas/1
  # PATCH/PUT /unovas/1.json
  def update
    respond_to do |format|
      if @unova.update(unova_params)
        format.html { redirect_to @unova, notice: 'Unova was successfully updated.' }
        format.json { render :show, status: :ok, location: @unova }
      else
        format.html { render :edit }
        format.json { render json: @unova.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unovas/1
  # DELETE /unovas/1.json
  def destroy
    @unova.destroy
    respond_to do |format|
      format.html { redirect_to unovas_url, notice: 'Unova was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unova
      @unova = Unova.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def unova_params
      params.require(:unova).permit(:name, :type_1, :type_2, :height, :weight, :description)
    end
end
