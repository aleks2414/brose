require 'test_helper'

class ThreeScoresControllerTest < ActionController::TestCase
  setup do
    @three_score = three_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:three_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create three_score" do
    assert_difference('ThreeScore.count') do
      post :create, three_score: { r1: @three_score.r1, r2: @three_score.r2, r3: @three_score.r3, team_id: @three_score.team_id }
    end

    assert_redirected_to three_score_path(assigns(:three_score))
  end

  test "should show three_score" do
    get :show, id: @three_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @three_score
    assert_response :success
  end

  test "should update three_score" do
    patch :update, id: @three_score, three_score: { r1: @three_score.r1, r2: @three_score.r2, r3: @three_score.r3, team_id: @three_score.team_id }
    assert_redirected_to three_score_path(assigns(:three_score))
  end

  test "should destroy three_score" do
    assert_difference('ThreeScore.count', -1) do
      delete :destroy, id: @three_score
    end

    assert_redirected_to three_scores_path
  end
end
