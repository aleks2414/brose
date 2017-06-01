require 'test_helper'

class FifthReviewsControllerTest < ActionController::TestCase
  setup do
    @fifth_review = fifth_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fifth_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fifth_review" do
    assert_difference('FifthReview.count') do
      post :create, fifth_review: { prototype_id: @fifth_review.prototype_id, q16: @fifth_review.q16, q17: @fifth_review.q17, q18: @fifth_review.q18, q19: @fifth_review.q19, q20: @fifth_review.q20, team_id: @fifth_review.team_id }
    end

    assert_redirected_to fifth_review_path(assigns(:fifth_review))
  end

  test "should show fifth_review" do
    get :show, id: @fifth_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fifth_review
    assert_response :success
  end

  test "should update fifth_review" do
    patch :update, id: @fifth_review, fifth_review: { prototype_id: @fifth_review.prototype_id, q16: @fifth_review.q16, q17: @fifth_review.q17, q18: @fifth_review.q18, q19: @fifth_review.q19, q20: @fifth_review.q20, team_id: @fifth_review.team_id }
    assert_redirected_to fifth_review_path(assigns(:fifth_review))
  end

  test "should destroy fifth_review" do
    assert_difference('FifthReview.count', -1) do
      delete :destroy, id: @fifth_review
    end

    assert_redirected_to fifth_reviews_path
  end
end
