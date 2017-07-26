require 'test_helper'

class FiveScoresControllerTest < ActionController::TestCase
  setup do
    @five_score = five_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:five_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create five_score" do
    assert_difference('FiveScore.count') do
      post :create, five_score: { r1: @five_score.r1, r2: @five_score.r2, r3: @five_score.r3, r4: @five_score.r4, r5: @five_score.r5, team_id: @five_score.team_id }
    end

    assert_redirected_to five_score_path(assigns(:five_score))
  end

  test "should show five_score" do
    get :show, id: @five_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @five_score
    assert_response :success
  end

  test "should update five_score" do
    patch :update, id: @five_score, five_score: { r1: @five_score.r1, r2: @five_score.r2, r3: @five_score.r3, r4: @five_score.r4, r5: @five_score.r5, team_id: @five_score.team_id }
    assert_redirected_to five_score_path(assigns(:five_score))
  end

  test "should destroy five_score" do
    assert_difference('FiveScore.count', -1) do
      delete :destroy, id: @five_score
    end

    assert_redirected_to five_scores_path
  end
end
