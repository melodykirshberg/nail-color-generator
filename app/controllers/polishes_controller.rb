class PolishesController < ApplicationController
  before_action :set_polish, only: %i[ show edit update destroy ]

  # GET /polishes or /polishes.json
  def index
    @polishes = Polish.all
  end

  # GET /polishes/1 or /polishes/1.json
  def show
  end

  # GET /polishes/new
  def new
    @polish = Polish.new
  end

  # GET /polishes/1/edit
  def edit
  end

  # POST /polishes or /polishes.json
  def create
    @polish = Polish.new(polish_params)

    respond_to do |format|
      if @polish.save
        format.html { redirect_to polish_url(@polish), notice: "Polish was successfully created." }
        format.json { render :show, status: :created, location: @polish }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @polish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /polishes/1 or /polishes/1.json
  def update
    respond_to do |format|
      if @polish.update(polish_params)
        format.html { redirect_to polish_url(@polish), notice: "Polish was successfully updated." }
        format.json { render :show, status: :ok, location: @polish }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @polish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /polishes/1 or /polishes/1.json
  def destroy
    @polish.destroy

    respond_to do |format|
      format.html { redirect_to polishes_url, notice: "Polish was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_polish
      @polish = Polish.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def polish_params
      params.require(:polish).permit(:name, :brand, :color, :polish_type)
    end
end
