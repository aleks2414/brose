class SixScoresController < ApplicationController
  before_action :set_six_score, only: [:show, :edit, :update, :destroy]
  before_action :set_team

  # GET /six_scores
  # GET /six_scores.json
  def index
    @six_scores = SixScore.all
  end

  # GET /six_scores/1
  # GET /six_scores/1.json
  def show
  end

  # GET /six_scores/new
  def new
    @six_score = SixScore.new
  end

  # GET /six_scores/1/edit
  def edit
  end

  # POST /six_scores
  # POST /six_scores.json
  def create
    @six_score = SixScore.new(six_score_params)
    @six_score.team_id = @team.id

    respond_to do |format|
      if @six_score.save
        format.html { redirect_to @team, notice: 'Six score was successfully created.' }
        format.json { render :show, status: :created, location: @six_score }
      else
        format.html { render :new }
        format.json { render json: @six_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /six_scores/1
  # PATCH/PUT /six_scores/1.json
  def update
    respond_to do |format|
      if @six_score.update(six_score_params)
        format.html { redirect_to @six_score, notice: 'Six score was successfully updated.' }
        format.json { render :show, status: :ok, location: @six_score }
      else
        format.html { render :edit }
        format.json { render json: @six_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /six_scores/1
  # DELETE /six_scores/1.json
  def destroy
    @six_score.destroy
    respond_to do |format|
      format.html { redirect_to six_scores_url, notice: 'Six score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_six_score
      @six_score = SixScore.find(params[:id])
    end

    def set_team
      @team = Team.find(params[:team_id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def six_score_params
      params.require(:six_score).permit(:team_id, :r1, :r2, :r3, :r4, :r5, :r6, :r7, :r8, :r9, :r10, :r11, :r12, :r13, :r14)
    end
end
