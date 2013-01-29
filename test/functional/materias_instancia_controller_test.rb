require 'test_helper'

class MateriasInstanciaControllerTest < ActionController::TestCase
  setup do
    @materias_instancium = materias_instancia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:materias_instancia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create materias_instancium" do
    assert_difference('MateriasInstancium.count') do
      post :create, materias_instancium: { instancia_id: @materias_instancium.instancia_id, materia_id: @materias_instancium.materia_id }
    end

    assert_redirected_to materias_instancium_path(assigns(:materias_instancium))
  end

  test "should show materias_instancium" do
    get :show, id: @materias_instancium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @materias_instancium
    assert_response :success
  end

  test "should update materias_instancium" do
    put :update, id: @materias_instancium, materias_instancium: { instancia_id: @materias_instancium.instancia_id, materia_id: @materias_instancium.materia_id }
    assert_redirected_to materias_instancium_path(assigns(:materias_instancium))
  end

  test "should destroy materias_instancium" do
    assert_difference('MateriasInstancium.count', -1) do
      delete :destroy, id: @materias_instancium
    end

    assert_redirected_to materias_instancia_path
  end
end
