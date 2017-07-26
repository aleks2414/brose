require 'test_helper'

class TwoScoresControllerTest < ActionController::TestCase
  setup do
    @two_score = two_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:two_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create two_score" do
    assert_difference('TwoScore.count') do
      post :create, two_score: { r1: @two_score.r1, r2: @two_score.r2, r3: @two_score.r3, team_id: @two_score.team_id }
    end

    assert_redirected_to two_score_path(assigns(:two_score))
  end

  test "should show two_score" do
    get :show, id: @two_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @two_score
    assert_response :success
  end

  test "should update two_score" do
    patch :update, id: @two_score, two_score: { r1: @two_score.r1, r2: @two_score.r2, r3: @two_score.r3, team_id: @two_score.team_id }
    assert_redirected_to two_score_path(assigns(:two_score))
  end

  test "should destroy two_score" do
    assert_difference('TwoScore.count', -1) do
      delete :destroy, id: @two_score
    end

    assert_redirected_to two_scores_path
  end
end
