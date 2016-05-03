require 'test_helper'

class CamposExtrasControllerTest < ActionController::TestCase
  setup do
    @campos_extra = campos_extras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campos_extras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campos_extra" do
    assert_difference('CamposExtra.count') do
      post :create, campos_extra: { emailCliente: @campos_extra.emailCliente, itemselCombobox: @campos_extra.itemselCombobox, itensCombox: @campos_extra.itensCombox, nomeCampo: @campos_extra.nomeCampo, tipoCampo: @campos_extra.tipoCampo, valorCampo: @campos_extra.valorCampo }
    end

    assert_redirected_to campos_extra_path(assigns(:campos_extra))
  end

  test "should show campos_extra" do
    get :show, id: @campos_extra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @campos_extra
    assert_response :success
  end

  test "should update campos_extra" do
    patch :update, id: @campos_extra, campos_extra: { emailCliente: @campos_extra.emailCliente, itemselCombobox: @campos_extra.itemselCombobox, itensCombox: @campos_extra.itensCombox, nomeCampo: @campos_extra.nomeCampo, tipoCampo: @campos_extra.tipoCampo, valorCampo: @campos_extra.valorCampo }
    assert_redirected_to campos_extra_path(assigns(:campos_extra))
  end

  test "should destroy campos_extra" do
    assert_difference('CamposExtra.count', -1) do
      delete :destroy, id: @campos_extra
    end

    assert_redirected_to campos_extras_path
  end
end
