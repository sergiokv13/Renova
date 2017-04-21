require 'test_helper'

class MensajesControllerTest < ActionController::TestCase
  setup do
    @mensaje = mensajes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mensajes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mensaje" do
    assert_difference('Mensaje.count') do
      post :create, mensaje: { contenido_mensaje: @mensaje.contenido_mensaje, email: @mensaje.email, nombre: @mensaje.nombre }
    end

    assert_redirected_to mensaje_path(assigns(:mensaje))
  end

  test "should show mensaje" do
    get :show, id: @mensaje
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mensaje
    assert_response :success
  end

  test "should update mensaje" do
    patch :update, id: @mensaje, mensaje: { contenido_mensaje: @mensaje.contenido_mensaje, email: @mensaje.email, nombre: @mensaje.nombre }
    assert_redirected_to mensaje_path(assigns(:mensaje))
  end

  test "should destroy mensaje" do
    assert_difference('Mensaje.count', -1) do
      delete :destroy, id: @mensaje
    end

    assert_redirected_to mensajes_path
  end
end
