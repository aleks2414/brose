class FirstReviewsController < ApplicationController
  before_action :set_first_review, only: [:show, :edit, :update, :destroy]
  before_action :set_challenge
  

  # GET /first_reviews
  # GET /first_reviews.json
  def index
    @first_reviews = FirstReview.all
  end

  # GET /first_reviews/1
  # GET /first_reviews/1.json
  def show
  end

  # GET /first_reviews/new
  def new
    @first_review = FirstReview.new
  end

  # GET /first_reviews/1/edit
  def edit
  end

  # POST /first_reviews
  # POST /first_reviews.json
  def create
    @first_review = FirstReview.new(first_review_params)
    @first_review.challenge_id = @challenge.id

    respond_to do |format|
      if @first_review.save
        format.html { redirect_to @first_review, notice: 'First review was successfully created.' }
        format.json { render :show, status: :created, location: @first_review }
      else
        format.html { render :new }
        format.json { render json: @first_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /first_reviews/1
  # PATCH/PUT /first_reviews/1.json
  def update
    respond_to do |format|
      if @first_review.update(first_review_params)
        format.html { redirect_to @first_review, notice: 'First review was successfully updated.' }
        format.json { render :show, status: :ok, location: @first_review }
      else
        format.html { render :edit }
        format.json { render json: @first_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /first_reviews/1
  # DELETE /first_reviews/1.json
  def destroy
    @first_review.destroy
    respond_to do |format|
      format.html { redirect_to first_reviews_url, notice: 'First review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_first_review
      @first_review = First_reviews.find(params[:id])
    end

    def set_challenge
      @challenge = Challenge.find(params[:challenge_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def first_review_params
      params.require(:first_review).permit(:challenge_id, :q1, :q2, :q3, :q4, :q5, :q6)
    end
end
