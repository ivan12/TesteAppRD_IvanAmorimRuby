require 'test_helper'

class FormPrimariosControllerTest < ActionController::TestCase
  setup do
    @form_primario = form_primarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:form_primarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create form_primario" do
    assert_difference('FormPrimario.count') do
      post :create, form_primario: { emailUsuario: @form_primario.emailUsuario, itensCombo: @form_primario.itensCombo, nomeCampo: @form_primario.nomeCampo, tipoCampo: @form_primario.tipoCampo }
    end

    assert_redirected_to form_primario_path(assigns(:form_primario))
  end

  test "should show form_primario" do
    get :show, id: @form_primario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @form_primario
    assert_response :success
  end

  test "should update form_primario" do
    patch :update, id: @form_primario, form_primario: { emailUsuario: @form_primario.emailUsuario, itensCombo: @form_primario.itensCombo, nomeCampo: @form_primario.nomeCampo, tipoCampo: @form_primario.tipoCampo }
    assert_redirected_to form_primario_path(assigns(:form_primario))
  end

  test "should destroy form_primario" do
    assert_difference('FormPrimario.count', -1) do
      delete :destroy, id: @form_primario
    end

    assert_redirected_to form_primarios_path
  end
end
