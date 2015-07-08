class ReportsController < ApplicationController
  def index
    @sale_total = Sale.count
    @counts = Sale.sales_total
    @dinheiro_em_caixa = Sale.price_list
  end
end
