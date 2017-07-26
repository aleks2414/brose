class FiveScoresController < ApplicationController
  before_action :set_five_score, only: [:show, :edit, :update, :destroy]
  before_action :set_team

  # GET /five_scores
  # GET /five_scores.json
  def index
    @five_scores = FiveScore.all
  end

  # GET /five_scores/1
  # GET /five_scores/1.json
  def show
  end

  # GET /five_scores/new
  def new
    @five_score = FiveScore.new
  end

  # GET /five_scores/1/edit
  def edit
  end

  # POST /five_scores
  # POST /five_scores.json
  def create
    @five_score = FiveScore.new(five_score_params)
    @five_score.team_id = @team.id

    respond_to do |format|
      if @five_score.save
        format.html { redirect_to @team, notice: 'Five score was successfully created.' }
        format.json { render :show, status: :created, location: @five_score }
      else
        format.html { render :new }
        format.json { render json: @five_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /five_scores/1
  # PATCH/PUT /five_scores/1.json
  def update
    respond_to do |format|
      if @five_score.update(five_score_params)
        format.html { redirect_to @five_score, notice: 'Five score was successfully updated.' }
        format.json { render :show, status: :ok, location: @five_score }
      else
        format.html { render :edit }
        format.json { render json: @five_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /five_scores/1
  # DELETE /five_scores/1.json
  def destroy
    @five_score.destroy
    respond_to do |format|
      format.html { redirect_to five_scores_url, notice: 'Five score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_five_score
      @five_score = FiveScore.find(params[:id])
    end

    def set_team
      @team = Team.find(params[:team_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def five_score_params
      params.require(:five_score).permit(:team_id, :r1, :r2, :r3, :r4, :r5)
    end
end
