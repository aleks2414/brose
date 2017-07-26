class ThreeScoresController < ApplicationController
  before_action :set_three_score, only: [:show, :edit, :update, :destroy]
  before_action :set_team

  # GET /three_scores
  # GET /three_scores.json
  def index
    @three_scores = ThreeScore.all
  end

  # GET /three_scores/1
  # GET /three_scores/1.json
  def show
  end

  # GET /three_scores/new
  def new
    @three_score = ThreeScore.new
  end

  # GET /three_scores/1/edit
  def edit
  end

  # POST /three_scores
  # POST /three_scores.json
  def create
    @three_score = ThreeScore.new(three_score_params)
    @three_score.team_id = @team.id

    respond_to do |format|
      if @three_score.save
        format.html { redirect_to @team, notice: 'Three score was successfully created.' }
        format.json { render :show, status: :created, location: @three_score }
      else
        format.html { render :new }
        format.json { render json: @three_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /three_scores/1
  # PATCH/PUT /three_scores/1.json
  def update
    respond_to do |format|
      if @three_score.update(three_score_params)
        format.html { redirect_to @three_score, notice: 'Three score was successfully updated.' }
        format.json { render :show, status: :ok, location: @three_score }
      else
        format.html { render :edit }
        format.json { render json: @three_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /three_scores/1
  # DELETE /three_scores/1.json
  def destroy
    @three_score.destroy
    respond_to do |format|
      format.html { redirect_to three_scores_url, notice: 'Three score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_three_score
      @three_score = ThreeScore.find(params[:id])
    end

    def set_team
      @team = Team.find(params[:team_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def three_score_params
      params.require(:three_score).permit(:team_id, :r1, :r2, :r3)
    end
end
