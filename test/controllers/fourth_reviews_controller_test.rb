require 'test_helper'

class FourthReviewsControllerTest < ActionController::TestCase
  setup do
    @fourth_review = fourth_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fourth_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fourth_review" do
    assert_difference('FourthReview.count') do
      post :create, fourth_review: { proposition_id: @fourth_review.proposition_id, q13: @fourth_review.q13, q14: @fourth_review.q14, q15: @fourth_review.q15, team_id: @fourth_review.team_id }
    end

    assert_redirected_to fourth_review_path(assigns(:fourth_review))
  end

  test "should show fourth_review" do
    get :show, id: @fourth_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fourth_review
    assert_response :success
  end

  test "should update fourth_review" do
    patch :update, id: @fourth_review, fourth_review: { proposition_id: @fourth_review.proposition_id, q13: @fourth_review.q13, q14: @fourth_review.q14, q15: @fourth_review.q15, team_id: @fourth_review.team_id }
    assert_redirected_to fourth_review_path(assigns(:fourth_review))
  end

  test "should destroy fourth_review" do
    assert_difference('FourthReview.count', -1) do
      delete :destroy, id: @fourth_review
    end

    assert_redirected_to fourth_reviews_path
  end
end
