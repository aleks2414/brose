require 'test_helper'

class SevenScoresControllerTest < ActionController::TestCase
  setup do
    @seven_score = seven_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seven_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seven_score" do
    assert_difference('SevenScore.count') do
      post :create, seven_score: { r1: @seven_score.r1, r2: @seven_score.r2, r3: @seven_score.r3, r4: @seven_score.r4, r5: @seven_score.r5, r6: @seven_score.r6, r7: @seven_score.r7, r8: @seven_score.r8, r9: @seven_score.r9, team_id: @seven_score.team_id }
    end

    assert_redirected_to seven_score_path(assigns(:seven_score))
  end

  test "should show seven_score" do
    get :show, id: @seven_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seven_score
    assert_response :success
  end

  test "should update seven_score" do
    patch :update, id: @seven_score, seven_score: { r1: @seven_score.r1, r2: @seven_score.r2, r3: @seven_score.r3, r4: @seven_score.r4, r5: @seven_score.r5, r6: @seven_score.r6, r7: @seven_score.r7, r8: @seven_score.r8, r9: @seven_score.r9, team_id: @seven_score.team_id }
    assert_redirected_to seven_score_path(assigns(:seven_score))
  end

  test "should destroy seven_score" do
    assert_difference('SevenScore.count', -1) do
      delete :destroy, id: @seven_score
    end

    assert_redirected_to seven_scores_path
  end
end
