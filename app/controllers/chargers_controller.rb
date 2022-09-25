class ChargersController < ApplicationController
  before_action :set_charger, only: [:show, :update, :destroy]

  # GET /chargers
  def index
    @chargers = Charger.all

    render json: @chargers
  end

  # GET /chargers/1
  def show
    render json: @charger
  end

  # POST /chargers
  def create
    @charger = Charger.new(charger_params)

    if @charger.save
      render json: @charger, status: :created, location: @charger
    else
      render json: @charger.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /chargers/1
  def update
    if @charger.update(charger_params)
      render json: @charger
    else
      render json: @charger.errors, status: :unprocessable_entity
    end
  end

  # DELETE /chargers/1
  def destroy
    @charger.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charger
      @charger = Charger.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def charger_params
      params.require(:charger).permit(:name, :price)
    end
end
