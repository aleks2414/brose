require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get proyecto" do
    get :proyecto
    assert_response :success
  end

  test "should get capitan" do
    get :capitan
    assert_response :success
  end

  test "should get equipo" do
    get :equipo
    assert_response :success
  end

  test "should get mentor" do
    get :mentor
    assert_response :success
  end

  test "should get reto" do
    get :reto
    assert_response :success
  end

  test "should get ventajas_competitivas" do
    get :ventajas_competitivas
    assert_response :success
  end

  test "should get concepto_validado" do
    get :concepto_validado
    assert_response :success
  end

  test "should get propuesta_de_valor" do
    get :propuesta_de_valor
    assert_response :success
  end

  test "should get prototipado" do
    get :prototipado
    assert_response :success
  end

end
