class FourthReviewsController < ApplicationController
  before_action :set_fourth_review, only: [:show, :edit, :update, :destroy]

  # GET /fourth_reviews
  # GET /fourth_reviews.json
  def index
    @fourth_reviews = FourthReview.all
  end

  # GET /fourth_reviews/1
  # GET /fourth_reviews/1.json
  def show
  end

  # GET /fourth_reviews/new
  def new
    @fourth_review = FourthReview.new
  end

  # GET /fourth_reviews/1/edit
  def edit
  end

  # POST /fourth_reviews
  # POST /fourth_reviews.json
  def create
    @fourth_review = FourthReview.new(fourth_review_params)

    respond_to do |format|
      if @fourth_review.save
        format.html { redirect_to @fourth_review, notice: 'Fourth review was successfully created.' }
        format.json { render :show, status: :created, location: @fourth_review }
      else
        format.html { render :new }
        format.json { render json: @fourth_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fourth_reviews/1
  # PATCH/PUT /fourth_reviews/1.json
  def update
    respond_to do |format|
      if @fourth_review.update(fourth_review_params)
        format.html { redirect_to @fourth_review, notice: 'Fourth review was successfully updated.' }
        format.json { render :show, status: :ok, location: @fourth_review }
      else
        format.html { render :edit }
        format.json { render json: @fourth_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fourth_reviews/1
  # DELETE /fourth_reviews/1.json
  def destroy
    @fourth_review.destroy
    respond_to do |format|
      format.html { redirect_to fourth_reviews_url, notice: 'Fourth review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fourth_review
      @fourth_review = FourthReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fourth_review_params
      params.require(:fourth_review).permit(:team_id, :proposition_id, :q13, :q14, :q15)
    end
end
