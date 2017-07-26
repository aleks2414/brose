class FourScoresController < ApplicationController
  before_action :set_four_score, only: [:show, :edit, :update, :destroy]
  before_action :set_team

  # GET /four_scores
  # GET /four_scores.json
  def index
    @four_scores = FourScore.all
  end

  # GET /four_scores/1
  # GET /four_scores/1.json
  def show
  end

  # GET /four_scores/new
  def new
    @four_score = FourScore.new
  end

  # GET /four_scores/1/edit
  def edit
  end

  # POST /four_scores
  # POST /four_scores.json
  def create
    @four_score = FourScore.new(four_score_params)
    @four_score.team_id = @team.id

    respond_to do |format|
      if @four_score.save
        format.html { redirect_to @team, notice: 'Four score was successfully created.' }
        format.json { render :show, status: :created, location: @four_score }
      else
        format.html { render :new }
        format.json { render json: @four_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /four_scores/1
  # PATCH/PUT /four_scores/1.json
  def update
    respond_to do |format|
      if @four_score.update(four_score_params)
        format.html { redirect_to @four_score, notice: 'Four score was successfully updated.' }
        format.json { render :show, status: :ok, location: @four_score }
      else
        format.html { render :edit }
        format.json { render json: @four_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /four_scores/1
  # DELETE /four_scores/1.json
  def destroy
    @four_score.destroy
    respond_to do |format|
      format.html { redirect_to four_scores_url, notice: 'Four score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_four_score
      @four_score = FourScore.find(params[:id])
    end

    def set_team
      @team = Team.find(params[:team_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def four_score_params
      params.require(:four_score).permit(:team_id, :r1, :r2, :r3)
    end
end
