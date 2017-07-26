class SevenScoresController < ApplicationController
  before_action :set_seven_score, only: [:show, :edit, :update, :destroy]
  before_action :set_team

  # GET /seven_scores
  # GET /seven_scores.json
  def index
    @seven_scores = SevenScore.all
  end

  # GET /seven_scores/1
  # GET /seven_scores/1.json
  def show
  end

  # GET /seven_scores/new
  def new
    @seven_score = SevenScore.new
  end

  # GET /seven_scores/1/edit
  def edit
  end

  # POST /seven_scores
  # POST /seven_scores.json
  def create
    @seven_score = SevenScore.new(seven_score_params)
    @seven_score.team_id = @team.id

    respond_to do |format|
      if @seven_score.save
        format.html { redirect_to @team, notice: 'Seven score was successfully created.' }
        format.json { render :show, status: :created, location: @seven_score }
      else
        format.html { render :new }
        format.json { render json: @seven_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seven_scores/1
  # PATCH/PUT /seven_scores/1.json
  def update
    respond_to do |format|
      if @seven_score.update(seven_score_params)
        format.html { redirect_to @seven_score, notice: 'Seven score was successfully updated.' }
        format.json { render :show, status: :ok, location: @seven_score }
      else
        format.html { render :edit }
        format.json { render json: @seven_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seven_scores/1
  # DELETE /seven_scores/1.json
  def destroy
    @seven_score.destroy
    respond_to do |format|
      format.html { redirect_to seven_scores_url, notice: 'Seven score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seven_score
      @seven_score = SevenScore.find(params[:id])
    end

    def set_team
      @team = Team.find(params[:team_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seven_score_params
      params.require(:seven_score).permit(:team_id, :r1, :r2, :r3, :r4, :r5, :r6, :r7, :r8, :r9)
    end
end
