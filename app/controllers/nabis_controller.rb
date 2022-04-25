class NabisController < ApplicationController
  before_action :set_nabi, only: %i[ show edit update destroy ]

  # GET /nabis or /nabis.json
  def index
    @nabis = Nabi.all
  end

  # GET /nabis/1 or /nabis/1.json
  def show
  end

  # GET /nabis/new
  def new
    @nabi = Nabi.new
  end

  # GET /nabis/1/edit
  def edit
  end

  # POST /nabis or /nabis.json
  def create
    @nabi = Nabi.new(nabi_params)

    respond_to do |format|
      if @nabi.save
        format.html { redirect_to nabi_url(@nabi), notice: "Nabi was successfully created." }
        format.json { render :show, status: :created, location: @nabi }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nabi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nabis/1 or /nabis/1.json
  def update
    respond_to do |format|
      if @nabi.update(nabi_params)
        format.html { redirect_to nabi_url(@nabi), notice: "Nabi was successfully updated." }
        format.json { render :show, status: :ok, location: @nabi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nabi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nabis/1 or /nabis/1.json
  def destroy
    @nabi.destroy

    respond_to do |format|
      format.html { redirect_to nabis_url, notice: "Nabi was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nabi
      @nabi = Nabi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nabi_params
      params.require(:nabi).permit(:name, :description, :price)
    end
end
