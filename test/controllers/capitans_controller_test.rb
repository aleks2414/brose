require 'test_helper'

class CapitansControllerTest < ActionController::TestCase
  setup do
    @capitan = capitans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:capitans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create capitan" do
    assert_difference('Capitan.count') do
      post :create, capitan: { departamento: @capitan.departamento, funcion: @capitan.funcion, nombre: @capitan.nombre, plata: @capitan.plata, team_id: @capitan.team_id }
    end

    assert_redirected_to capitan_path(assigns(:capitan))
  end

  test "should show capitan" do
    get :show, id: @capitan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @capitan
    assert_response :success
  end

  test "should update capitan" do
    patch :update, id: @capitan, capitan: { departamento: @capitan.departamento, funcion: @capitan.funcion, nombre: @capitan.nombre, plata: @capitan.plata, team_id: @capitan.team_id }
    assert_redirected_to capitan_path(assigns(:capitan))
  end

  test "should destroy capitan" do
    assert_difference('Capitan.count', -1) do
      delete :destroy, id: @capitan
    end

    assert_redirected_to capitans_path
  end
end
