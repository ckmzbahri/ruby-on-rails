class UrunsController < ApplicationController
  before_action :set_urun, only: %i[ show edit update destroy ]

  # GET /uruns or /uruns.json
  def index
    @uruns = Urun.all
    
  end

  # GET /uruns/1 or /uruns/1.json
  def show
  end

  # GET /uruns/new
  def new
    @urun = Urun.new
  end

  # GET /uruns/1/edit
  def edit
  end

  # POST /uruns or /uruns.json
  def create
    @urun = Urun.new(urun_params)

    respond_to do |format|
      if @urun.save
        format.html { redirect_to urun_url(@urun), notice: "Ürün Eklendi" }
        format.json { render :show, status: :created, location: @urun }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @urun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uruns/1 or /uruns/1.json
  def update
    respond_to do |format|
      if @urun.update(urun_params)
        format.html { redirect_to urun_url(@urun), notice: "Ürün Güncellendi" }
        format.json { render :show, status: :ok, location: @urun }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @urun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uruns/1 or /uruns/1.json
  def destroy
    @urun.destroy

    respond_to do |format|
      format.html { redirect_to uruns_url, notice: "Ürün Silindi" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_urun
      @urun = Urun.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def urun_params
      params.require(:urun).permit(:name, :marka_id)
    end

end
