class TwoScoresController < ApplicationController
  before_action :set_two_score, only: [:show, :edit, :update, :destroy]
  before_action :set_team

  # GET /two_scores
  # GET /two_scores.json
  def index
    @two_scores = TwoScore.all
  end

  # GET /two_scores/1
  # GET /two_scores/1.json
  def show
  end

  # GET /two_scores/new
  def new
    @two_score = TwoScore.new
  end

  # GET /two_scores/1/edit
  def edit
  end

  # POST /two_scores
  # POST /two_scores.json
  def create
    @two_score = TwoScore.new(two_score_params)
    @two_score.team_id = @team.id

    respond_to do |format|
      if @two_score.save
        format.html { redirect_to @team, notice: 'Two score was successfully created.' }
        format.json { render :show, status: :created, location: @two_score }
      else
        format.html { render :new }
        format.json { render json: @two_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /two_scores/1
  # PATCH/PUT /two_scores/1.json
  def update
    respond_to do |format|
      if @two_score.update(two_score_params)
        format.html { redirect_to @two_score, notice: 'Two score was successfully updated.' }
        format.json { render :show, status: :ok, location: @two_score }
      else
        format.html { render :edit }
        format.json { render json: @two_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /two_scores/1
  # DELETE /two_scores/1.json
  def destroy
    @two_score.destroy
    respond_to do |format|
      format.html { redirect_to two_scores_url, notice: 'Two score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_two_score
      @two_score = TwoScore.find(params[:id])
    end

    def set_team
      @team = Team.find(params[:team_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def two_score_params
      params.require(:two_score).permit(:team_id, :r1, :r2, :r3)
    end
end
