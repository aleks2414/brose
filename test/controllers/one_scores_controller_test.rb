require 'test_helper'

class OneScoresControllerTest < ActionController::TestCase
  setup do
    @one_score = one_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:one_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create one_score" do
    assert_difference('OneScore.count') do
      post :create, one_score: { r1: @one_score.r1, r2: @one_score.r2, r3: @one_score.r3, r4: @one_score.r4, r5: @one_score.r5, r6: @one_score.r6, team_id: @one_score.team_id }
    end

    assert_redirected_to one_score_path(assigns(:one_score))
  end

  test "should show one_score" do
    get :show, id: @one_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @one_score
    assert_response :success
  end

  test "should update one_score" do
    patch :update, id: @one_score, one_score: { r1: @one_score.r1, r2: @one_score.r2, r3: @one_score.r3, r4: @one_score.r4, r5: @one_score.r5, r6: @one_score.r6, team_id: @one_score.team_id }
    assert_redirected_to one_score_path(assigns(:one_score))
  end

  test "should destroy one_score" do
    assert_difference('OneScore.count', -1) do
      delete :destroy, id: @one_score
    end

    assert_redirected_to one_scores_path
  end
end
