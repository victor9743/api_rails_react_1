class FinancasController < ApplicationController
  before_action :set_financa, only: [:show, :update, :destroy]

  # GET /financas
  def index
    @financas = Financa.all

    render json: @financas
  end

  # GET /financas/1
  def show
    render json: @financa
  end

  # POST /financas
  def create
    @financa = Financa.new(
      descricao: params[:descricao],
      movimentacao: params[:movimentacao],
      valor: params[:valor]
    )

    if @financa.save
      render json: @financa, status: :created, location: @financa
    else
      render json: @financa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /financas/1
  def update
    if @financa.update(financa_params)
      render json: @financa
    else
      render json: @financa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /financas/1
  def destroy
    @financa.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financa
      @financa = Financa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def financa_params
      params.require(:financa).permit(:descricao, :movimentacao, :valor)
    end
end
