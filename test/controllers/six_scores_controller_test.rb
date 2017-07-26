require 'test_helper'

class SixScoresControllerTest < ActionController::TestCase
  setup do
    @six_score = six_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:six_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create six_score" do
    assert_difference('SixScore.count') do
      post :create, six_score: { r10: @six_score.r10, r11: @six_score.r11, r12: @six_score.r12, r13: @six_score.r13, r14: @six_score.r14, r1: @six_score.r1, r2: @six_score.r2, r3: @six_score.r3, r4: @six_score.r4, r5: @six_score.r5, r6: @six_score.r6, r7: @six_score.r7, r8: @six_score.r8, r9: @six_score.r9, team_id: @six_score.team_id }
    end

    assert_redirected_to six_score_path(assigns(:six_score))
  end

  test "should show six_score" do
    get :show, id: @six_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @six_score
    assert_response :success
  end

  test "should update six_score" do
    patch :update, id: @six_score, six_score: { r10: @six_score.r10, r11: @six_score.r11, r12: @six_score.r12, r13: @six_score.r13, r14: @six_score.r14, r1: @six_score.r1, r2: @six_score.r2, r3: @six_score.r3, r4: @six_score.r4, r5: @six_score.r5, r6: @six_score.r6, r7: @six_score.r7, r8: @six_score.r8, r9: @six_score.r9, team_id: @six_score.team_id }
    assert_redirected_to six_score_path(assigns(:six_score))
  end

  test "should destroy six_score" do
    assert_difference('SixScore.count', -1) do
      delete :destroy, id: @six_score
    end

    assert_redirected_to six_scores_path
  end
end
