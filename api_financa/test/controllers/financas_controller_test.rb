require "test_helper"

class FinancasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @financa = financas(:one)
  end

  test "should get index" do
    get financas_url, as: :json
    assert_response :success
  end

  test "should create financa" do
    assert_difference('Financa.count') do
      post financas_url, params: { financa: { descricao: @financa.descricao, movimentacao: @financa.movimentacao, valor: @financa.valor } }, as: :json
    end

    assert_response 201
  end

  test "should show financa" do
    get financa_url(@financa), as: :json
    assert_response :success
  end

  test "should update financa" do
    patch financa_url(@financa), params: { financa: { descricao: @financa.descricao, movimentacao: @financa.movimentacao, valor: @financa.valor } }, as: :json
    assert_response 200
  end

  test "should destroy financa" do
    assert_difference('Financa.count', -1) do
      delete financa_url(@financa), as: :json
    end

    assert_response 204
  end
end
