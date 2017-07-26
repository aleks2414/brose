require 'test_helper'

class FourScoresControllerTest < ActionController::TestCase
  setup do
    @four_score = four_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:four_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create four_score" do
    assert_difference('FourScore.count') do
      post :create, four_score: { r1: @four_score.r1, r2: @four_score.r2, r3: @four_score.r3, team_id: @four_score.team_id }
    end

    assert_redirected_to four_score_path(assigns(:four_score))
  end

  test "should show four_score" do
    get :show, id: @four_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @four_score
    assert_response :success
  end

  test "should update four_score" do
    patch :update, id: @four_score, four_score: { r1: @four_score.r1, r2: @four_score.r2, r3: @four_score.r3, team_id: @four_score.team_id }
    assert_redirected_to four_score_path(assigns(:four_score))
  end

  test "should destroy four_score" do
    assert_difference('FourScore.count', -1) do
      delete :destroy, id: @four_score
    end

    assert_redirected_to four_scores_path
  end
end
