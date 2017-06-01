require 'test_helper'

class SecondReviewsControllerTest < ActionController::TestCase
  setup do
    @second_review = second_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:second_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create second_review" do
    assert_difference('SecondReview.count') do
      post :create, second_review: { advantage_id: @second_review.advantage_id, q7: @second_review.q7, q8: @second_review.q8, q9: @second_review.q9, team_id: @second_review.team_id }
    end

    assert_redirected_to second_review_path(assigns(:second_review))
  end

  test "should show second_review" do
    get :show, id: @second_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @second_review
    assert_response :success
  end

  test "should update second_review" do
    patch :update, id: @second_review, second_review: { advantage_id: @second_review.advantage_id, q7: @second_review.q7, q8: @second_review.q8, q9: @second_review.q9, team_id: @second_review.team_id }
    assert_redirected_to second_review_path(assigns(:second_review))
  end

  test "should destroy second_review" do
    assert_difference('SecondReview.count', -1) do
      delete :destroy, id: @second_review
    end

    assert_redirected_to second_reviews_path
  end
end
