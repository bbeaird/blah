class DinnersController < ApplicationController
  before_action :set_dinner, only: [:show, :edit, :update, :destroy]

  # GET /dinners
  # GET /dinners.json
  def index
    @dinners = Dinner.all
  end

  # GET /dinners/1
  # GET /dinners/1.json
  def show
  end

  # GET /dinners/new
  def new
    @dinner = Dinner.new
  end

  # GET /dinners/1/edit
  def edit
  end

  # POST /dinners
  # POST /dinners.json
  def create
    date = Date.civil(*params[:dinner].sort.map(&:last).map(&:to_i))
    @dinner = Dinner.new({ date_cooked: date })
    p 'x'*50
    p @dinner
    p 'x'*50
    p dinner_params
    p 'x'*50
    p dinner_params[:dinner]
    p 'x'*50
    # p dinner_params[:dinner][:dinner_cooker]
    @dinner_cooker = DinnerCooker.new(dinner_params[:dinner])
    p @dinner_cooker
    p 'x'*50

    respond_to do |format|
      if @dinner_cooker.dinners.build(dinner_params)
      # if @dinner.save
        format.html { redirect_to @dinner, notice: 'Dinner was successfully created.' }
        format.json { render :show, status: :created, location: @dinner }
      else
        format.html { render :new }
        format.json { render json: @dinner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dinners/1
  # PATCH/PUT /dinners/1.json
  def update
    respond_to do |format|
      if @dinner.update(dinner_params)
        format.html { redirect_to @dinner, notice: 'Dinner was successfully updated.' }
        format.json { render :show, status: :ok, location: @dinner }
      else
        format.html { render :edit }
        format.json { render json: @dinner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dinners/1
  # DELETE /dinners/1.json
  def destroy
    @dinner.destroy
    respond_to do |format|
      format.html { redirect_to dinners_url, notice: 'Dinner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dinner
      @dinner = Dinner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dinner_params
      params.require(:dinner).permit(:date_cooked, :dinner_cooker)
    end
end
