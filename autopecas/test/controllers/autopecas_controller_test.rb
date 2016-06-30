require 'test_helper'

class AutopecasControllerTest < ActionController::TestCase
  setup do
    @autopeca = autopecas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:autopecas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create autopeca" do
    assert_difference('Autopeca.count') do
      post :create, autopeca: { aplicacao: @autopeca.aplicacao, codigo_peca: @autopeca.codigo_peca, estoque: @autopeca.estoque, grupo: @autopeca.grupo, info: @autopeca.info, montadora: @autopeca.montadora, nome: @autopeca.nome, num_fabrica: @autopeca.num_fabrica, pratileira: @autopeca.pratileira, valor_compra: @autopeca.valor_compra, valor_venda: @autopeca.valor_venda }
    end

    assert_redirected_to autopeca_path(assigns(:autopeca))
  end

  test "should show autopeca" do
    get :show, id: @autopeca
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @autopeca
    assert_response :success
  end

  test "should update autopeca" do
    patch :update, id: @autopeca, autopeca: { aplicacao: @autopeca.aplicacao, codigo_peca: @autopeca.codigo_peca, estoque: @autopeca.estoque, grupo: @autopeca.grupo, info: @autopeca.info, montadora: @autopeca.montadora, nome: @autopeca.nome, num_fabrica: @autopeca.num_fabrica, pratileira: @autopeca.pratileira, valor_compra: @autopeca.valor_compra, valor_venda: @autopeca.valor_venda }
    assert_redirected_to autopeca_path(assigns(:autopeca))
  end

  test "should destroy autopeca" do
    assert_difference('Autopeca.count', -1) do
      delete :destroy, id: @autopeca
    end

    assert_redirected_to autopecas_path
  end
end
