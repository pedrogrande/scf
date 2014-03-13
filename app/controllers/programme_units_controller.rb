class ProgrammeUnitsController < ApplicationController
  before_action :set_programme_unit, only: [:show, :edit, :update, :destroy]

  # GET /programme_units
  # GET /programme_units.json
  def index
    @programme_units = ProgrammeUnit.all
  end

  # GET /programme_units/1
  # GET /programme_units/1.json
  def show
  end

  # GET /programme_units/new
  def new
    @programme_unit = ProgrammeUnit.new
  end

  # GET /programme_units/1/edit
  def edit
  end

  # POST /programme_units
  # POST /programme_units.json
  def create
    @programme_unit = ProgrammeUnit.new(programme_unit_params)

    respond_to do |format|
      if @programme_unit.save
        format.html { redirect_to @programme_unit, notice: 'Programme unit was successfully created.' }
        format.json { render action: 'show', status: :created, location: @programme_unit }
      else
        format.html { render action: 'new' }
        format.json { render json: @programme_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programme_units/1
  # PATCH/PUT /programme_units/1.json
  def update
    respond_to do |format|
      if @programme_unit.update(programme_unit_params)
        format.html { redirect_to @programme_unit, notice: 'Programme unit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @programme_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programme_units/1
  # DELETE /programme_units/1.json
  def destroy
    @programme_unit.destroy
    respond_to do |format|
      format.html { redirect_to programme_units_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programme_unit
      @programme_unit = ProgrammeUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def programme_unit_params
      params.require(:programme_unit).permit(:programme_id, :unit_id)
    end
end
