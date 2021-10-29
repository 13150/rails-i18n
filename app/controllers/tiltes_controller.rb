class TiltesController < ApplicationController
  before_action :set_tilte, only: %i[ show edit update destroy ]

  # GET /tiltes or /tiltes.json
  def index
    @tiltes = Tilte.all
  end

  # GET /tiltes/1 or /tiltes/1.json
  def show
  end

  # GET /tiltes/new
  def new
    @tilte = Tilte.new
  end

  # GET /tiltes/1/edit
  def edit
  end

  # POST /tiltes or /tiltes.json
  def create
    @tilte = Tilte.new(tilte_params)

    respond_to do |format|
      if @tilte.save
        format.html { redirect_to @tilte, notice: "Tilte was successfully created." }
        format.json { render :show, status: :created, location: @tilte }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tilte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tiltes/1 or /tiltes/1.json
  def update
    respond_to do |format|
      if @tilte.update(tilte_params)
        format.html { redirect_to @tilte, notice: "Tilte was successfully updated." }
        format.json { render :show, status: :ok, location: @tilte }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tilte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tiltes/1 or /tiltes/1.json
  def destroy
    @tilte.destroy
    respond_to do |format|
      format.html { redirect_to tiltes_url, notice: "Tilte was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tilte
      @tilte = Tilte.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tilte_params
      params.require(:tilte).permit(:body)
    end
end
