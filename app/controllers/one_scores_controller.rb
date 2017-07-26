class OneScoresController < ApplicationController
  before_action :set_one_score, only: [:show, :edit, :update, :destroy]
  before_action :set_team

  # GET /one_scores
  # GET /one_scores.json
  def index
    @one_scores = OneScore.all
  end

  # GET /one_scores/1
  # GET /one_scores/1.json
  def show
  end

  # GET /one_scores/new
  def new
    @one_score = OneScore.new
  end

  # GET /one_scores/1/edit
  def edit
  end

  # POST /one_scores
  # POST /one_scores.json
  def create
    @one_score = OneScore.new(one_score_params)
    @one_score.team_id = @team.id

    respond_to do |format|
      if @one_score.save
        format.html { redirect_to @team, notice: 'One score was successfully created.' }
        format.json { render :show, status: :created, location: @one_score }
      else
        format.html { render :new }
        format.json { render json: @one_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /one_scores/1
  # PATCH/PUT /one_scores/1.json
  def update
    respond_to do |format|
      if @one_score.update(one_score_params)
        format.html { redirect_to @one_score, notice: 'One score was successfully updated.' }
        format.json { render :show, status: :ok, location: @one_score }
      else
        format.html { render :edit }
        format.json { render json: @one_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /one_scores/1
  # DELETE /one_scores/1.json
  def destroy
    @one_score.destroy
    respond_to do |format|
      format.html { redirect_to one_scores_url, notice: 'One score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_one_score
      @one_score = OneScore.find(params[:id])
    end

    def set_team
      @team = Team.find(params[:team_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def one_score_params
      params.require(:one_score).permit(:team_id, :r1, :r2, :r3, :r4, :r5, :r6)
    end
end
