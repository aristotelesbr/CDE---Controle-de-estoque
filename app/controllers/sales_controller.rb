class SalesController < ApplicationController
  before_action :find_sale, only: [:show]

  def index
    @sales = Sale.all
  end

  def search
    if params[:data1].present? && params[:data2].present?
      @sales = Sale.where( created_at: params[:data1].to_date.beginning_of_day..params[:data2].to_date.end_of_day)
      redirect_to sales_path
    else
      flash[:alert] = "Você precisa preenhcer ambas as datas né tio."
      @sales = Sale.where( created_at: Date.today.beginning_of_month..Date.today.end_of_month)
    end
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
