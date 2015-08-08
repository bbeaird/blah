class DinnerCookersController < ApplicationController
  before_action :set_dinner_cooker, only: [:show, :edit, :update, :destroy]

  # GET /dinner_cookers
  # GET /dinner_cookers.json
  def index
    @dinner_cookers = DinnerCooker.all
  end

  # GET /dinner_cookers/1
  # GET /dinner_cookers/1.json
  def show
  end

  # GET /dinner_cookers/new
  def new
    @dinner_cooker = DinnerCooker.new
  end

  # GET /dinner_cookers/1/edit
  def edit
  end

  # POST /dinner_cookers
  # POST /dinner_cookers.json
  def create
    @dinner_cooker = DinnerCooker.new(dinner_cooker_params)

    respond_to do |format|
      if @dinner_cooker.save
        format.html { redirect_to @dinner_cooker, notice: 'Dinner cooker was successfully created.' }
        format.json { render :show, status: :created, location: @dinner_cooker }
      else
        format.html { render :new }
        format.json { render json: @dinner_cooker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dinner_cookers/1
  # PATCH/PUT /dinner_cookers/1.json
  def update
    respond_to do |format|
      if @dinner_cooker.update(dinner_cooker_params)
        format.html { redirect_to @dinner_cooker, notice: 'Dinner cooker was successfully updated.' }
        format.json { render :show, status: :ok, location: @dinner_cooker }
      else
        format.html { render :edit }
        format.json { render json: @dinner_cooker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dinner_cookers/1
  # DELETE /dinner_cookers/1.json
  def destroy
    @dinner_cooker.destroy
    respond_to do |format|
      format.html { redirect_to dinner_cookers_url, notice: 'Dinner cooker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dinner_cooker
      @dinner_cooker = DinnerCooker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dinner_cooker_params
      params.require(:dinner_cooker).permit(:name)
    end
end
