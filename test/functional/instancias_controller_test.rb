require 'test_helper'

class InstanciasControllerTest < ActionController::TestCase
  setup do
    @instancia = instancias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instancias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instancia" do
    assert_difference('Instancia.count') do
      post :create, instancia: { adeudan: @instancia.adeudan, adeudan_mas_de_tres: @instancia.adeudan_mas_de_tres, adeudan_menos_de_tres: @instancia.adeudan_menos_de_tres, cantidad_de_alumnos: @instancia.cantidad_de_alumnos, curso_id: @instancia.curso_id, fecha: @instancia.fecha, nombre: @instancia.nombre, porc_adeuda: @instancia.porc_adeuda, porc_mas_de_tres: @instancia.porc_mas_de_tres, porc_menos_de_tres: @instancia.porc_menos_de_tres }
    end

    assert_redirected_to instancia_path(assigns(:instancia))
  end

  test "should show instancia" do
    get :show, id: @instancia
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instancia
    assert_response :success
  end

  test "should update instancia" do
    put :update, id: @instancia, instancia: { adeudan: @instancia.adeudan, adeudan_mas_de_tres: @instancia.adeudan_mas_de_tres, adeudan_menos_de_tres: @instancia.adeudan_menos_de_tres, cantidad_de_alumnos: @instancia.cantidad_de_alumnos, curso_id: @instancia.curso_id, fecha: @instancia.fecha, nombre: @instancia.nombre, porc_adeuda: @instancia.porc_adeuda, porc_mas_de_tres: @instancia.porc_mas_de_tres, porc_menos_de_tres: @instancia.porc_menos_de_tres }
    assert_redirected_to instancia_path(assigns(:instancia))
  end

  test "should destroy instancia" do
    assert_difference('Instancia.count', -1) do
      delete :destroy, id: @instancia
    end

    assert_redirected_to instancias_path
  end
end
