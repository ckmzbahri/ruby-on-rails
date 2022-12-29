class MarkasController < ApplicationController
  before_action :set_marka, only: %i[ show edit update destroy ]

  # GET /markas or /markas.json
  def index
    @markas = Marka.all
  end

  # GET /markas/1 or /markas/1.json
  def show
  end

  # GET /markas/new
  def new
    @marka = Marka.new
  end

  # GET /markas/1/edit
  def edit
  end

  # POST /markas or /markas.json
  def create
    @marka = Marka.new(marka_params)

    respond_to do |format|
      if @marka.save
        format.html { redirect_to marka_url(@marka), notice: "Marka Eklendi" }
        format.json { render :show, status: :created, location: @marka }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @marka.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /markas/1 or /markas/1.json
  def update
    respond_to do |format|
      if @marka.update(marka_params)
        format.html { redirect_to marka_url(@marka), notice: "Marka Güncellendi" }
        format.json { render :show, status: :ok, location: @marka }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @marka.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /markas/1 or /markas/1.json
  def destroy
    @marka.destroy

    respond_to do |format|
      format.html { redirect_to markas_url, notice: "Marka silindi" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marka
      @marka = Marka.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def marka_params
      params.require(:marka).permit(:name)
    end
end
