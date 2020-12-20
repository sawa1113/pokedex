class HoennsController < ApplicationController
  before_action :set_hoenn, only: [:show, :edit, :update, :destroy]

  # GET /hoenns
  # GET /hoenns.json
  def index
    @hoenns = Hoenn.all
  end

  # GET /hoenns/1
  # GET /hoenns/1.json
  def show
  end

  # GET /hoenns/new
  def new
    @hoenn = Hoenn.new
  end

  # GET /hoenns/1/edit
  def edit
    @hoenn = Hoenn.find(params[:id])
  end

  # POST /hoenns
  # POST /hoenns.json
  def create
    @hoenn = Hoenn.new(hoenn_params)

    respond_to do |format|
      if @hoenn.save
        format.html { redirect_to @hoenn, notice: 'Hoenn was successfully created.' }
        format.json { render :show, status: :created, location: @hoenn }
      else
        format.html { render :new }
        format.json { render json: @hoenn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hoenns/1
  # PATCH/PUT /hoenns/1.json
  def update
    respond_to do |format|
      if @hoenn.update(hoenn_params)
        format.html { redirect_to @hoenn, notice: 'Hoenn was successfully updated.' }
        format.json { render :show, status: :ok, location: @hoenn }
      else
        format.html { render :edit }
        format.json { render json: @hoenn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hoenns/1
  # DELETE /hoenns/1.json
  def destroy
    @hoenn.destroy
    respond_to do |format|
      format.html { redirect_to hoenns_url, notice: 'Hoenn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hoenn
      @hoenn = Hoenn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hoenn_params
      params.require(:hoenn).permit(:name, :type_1, :type_2, :height, :weight, :description, :number, :image)
    end
end
