class CapitansController < ApplicationController
  before_action :set_capitan, only: [:show, :edit, :update, :destroy]

  # GET /capitans
  # GET /capitans.json
  def index
    @capitans = Capitan.all
  end

  # GET /capitans/1
  # GET /capitans/1.json
  def show
  end

  # GET /capitans/new
  def new
    @capitan = Capitan.new
  end

  # GET /capitans/1/edit
  def edit
  end

  # POST /capitans
  # POST /capitans.json
  def create
    @capitan = Capitan.new(capitan_params)
    @capitan.team_id = current_team.id

    respond_to do |format|
      if @capitan.save
        format.html { redirect_to @capitan, notice: 'Capitan was successfully created.' }
        format.json { render :show, status: :created, location: @capitan }
      else
        format.html { render :new }
        format.json { render json: @capitan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /capitans/1
  # PATCH/PUT /capitans/1.json
  def update
    respond_to do |format|
      if @capitan.update(capitan_params)
        format.html { redirect_to @capitan, notice: 'Capitan was successfully updated.' }
        format.json { render :show, status: :ok, location: @capitan }
      else
        format.html { render :edit }
        format.json { render json: @capitan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /capitans/1
  # DELETE /capitans/1.json
  def destroy
    @capitan.destroy
    respond_to do |format|
      format.html { redirect_to capitans_url, notice: 'Capitan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capitan
      @capitan = Capitan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def capitan_params
      params.require(:capitan).permit(:nombre, :departamento, :funcion, :plata, :team_id)
    end
end
