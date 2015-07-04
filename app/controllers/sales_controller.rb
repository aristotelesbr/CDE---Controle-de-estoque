class SalesController < ApplicationController
  before_action :find_sale, only: [:show]

  def index
    @sales = Sale.all
  end

  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(sale_params)
    if @sale.save!
      redirect_to @sale, notice: 'Venda registrada com sucesso!'
    else
      render 'new',
        alert: 'Não foi possivel lançar a venda.'
    end
  end

  def show
  end

  private

  def find_sale
    @sale = Sale.find(params[:id])
  end

  def sale_params
    params.require(:sale).permit(:product_id, :quantity)
  end
end
